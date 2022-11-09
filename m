Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D8C8623265
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 19:25:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230410AbiKISZt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 13:25:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230389AbiKISZr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 13:25:47 -0500
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C79DF2611
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 10:25:46 -0800 (PST)
Received: by mail-qv1-xf2a.google.com with SMTP id ml12so12892461qvb.0
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 10:25:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gHcdsdJydUrA2hdwZklUWUnQeSJD5MMTvzF3srFmoXc=;
        b=Gj6BYrQ7QwK1Oue9fPnlKr6x4tve0IjKfgocgrGmyJeUfWabi4d8nTgBv8ton8JJl/
         iUwnAEOXPAchprbHDnM551AxGSHXNW7bDimsGRJ67WldVzcboA9/z97C6S0/vFAHxn1a
         g1zW97bjved0CBiMa6TMi2qr+vPPQZlAIer2RWv8c3+Mfl3V0kvJfuZFofBqPGIHxkO6
         bElxV2PTyA7WkNyA6VdRUyeVFJAtL1T+zq2Mn9LK8x97RrYxaYmivf+Ej45/xkvzYnCv
         e2h2r273OH+yTQeReLMf0pw4k3I9e+BFKy+qzcc7GlHWj+3itZDiH6ta+Z6B3CLHFzIa
         9rFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gHcdsdJydUrA2hdwZklUWUnQeSJD5MMTvzF3srFmoXc=;
        b=N+qhdK/dJnsmYxxMQCHRFyJEtIL2+zJvWZbSdbQAHanBTO4uAMZEAM8sHJdKO8S3yI
         sHXzmV9mAD26PlLacocu6CI2wBPId4/rENwie9kDT4mQ5g/m2J76vHBwY45M1DxK2g8I
         LruW6njpzucSL/QhK2mC1kMVp+KnU+yCbdJqp1b2M9TA4+aBYFUUGOMU4EsRxM1uV+an
         QabRfaL0ZiTouSeiOQjuZFcpGjv/serEOnE2vCiBpol/1yp4xHRg1IHNzfAXdTh24q1A
         UuIvopNQi+NFtB5Xyaw6Hv74eMnAdir+LsOF5iSyEMto3mFtdyFjs7JfqHL5O5xStRmW
         /QCw==
X-Gm-Message-State: ACrzQf1WMUzzay4hsHAdFTJcEerGW6hothDekWH80ZGWZZmsQLIWyfen
        To5uooVuFmyiEIdIAW3pYWI=
X-Google-Smtp-Source: AMsMyM4f0CTkViDzYi1Yc7IsxWqgKCBxM2BNRiqi71l4BdBJ8TamUa4gxGqEaqYDFmx79igSkTXrOA==
X-Received: by 2002:a05:6214:1bc5:b0:4bb:acd8:36c2 with SMTP id m5-20020a0562141bc500b004bbacd836c2mr56502711qvc.36.1668018345855;
        Wed, 09 Nov 2022 10:25:45 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id h12-20020a05620a284c00b006cbc6e1478csm11047528qkp.57.2022.11.09.10.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Nov 2022 10:25:45 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcmbca: bcm6858: add TWD block
Date:   Wed,  9 Nov 2022 10:25:42 -0800
Message-Id: <20221109182542.879562-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221103110015.21761-1-zajec5@gmail.com>
References: <20221103110015.21761-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu,  3 Nov 2022 12:00:15 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM6858 contains TWD block with timers, watchdog, and reset subblocks.
> Describe it.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
