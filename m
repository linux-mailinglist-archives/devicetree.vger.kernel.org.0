Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1F705756B1
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 23:01:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229458AbiGNVBb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 17:01:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232729AbiGNVB2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 17:01:28 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 595E66D2EF
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 14:01:27 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id s21so3893122pjq.4
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 14:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YTLuF9+hII6b2kivANHhA4IQuqav/O4hvQMe6A7GJDo=;
        b=ADtXI6W9sB+RYqQZ2sGb/XNqMVNBxs82oTRYyzUq8Ap6reKkUGj6VCotNiFND1VJax
         Cw0/5uHTaHVchvyZgRo2CEweB5AGtoRQFS9FT4ckicwAMah3cNejIu/XBkoRpsjvMUTa
         jcZ0BLrSQwDBcux4DsVcxL4qzOMQTFaNSWfxtuGn4Ub/VbrkXIEyUbeiinnOwxUAfoJj
         D8/OccrjHOfJ2tWRDQ1jKBujSvK8B+sjdUNyw8wJjUS6knnvtLtn4TvLzHFNzPBpsKCr
         9FiuEQa7f6R2E2OAHOF0TYyG0Vwq+lPV7HdipMaUFnBWUVPGTHwb5zg/l/DTN7jRtTSH
         nyyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YTLuF9+hII6b2kivANHhA4IQuqav/O4hvQMe6A7GJDo=;
        b=vGNNO15JE17VxZg97aV/L4URDc+Dxi/jE+Ts/2x9KTfdVTmp2GE+E0um5k8erg9B6l
         JkUPt3/P1DL2YltVs06e/UuO+6MDUbTdrgOEYvgvqpIANvS+rLDfa2K4kvB7wXe257zU
         y33McbSchFUe5vsxbwUGokkPmEfIXj4RCkErXOjWrUkIJr1OuRRnfJ9jpeoET80kujPx
         Ajs7if3iEfzCgM1in1Jh5jAur6JsXblO1cgcPY/w696SxEy1sEAgRS5OdHgQLM7AvnjH
         rBP2UChyj7rmsnZ62+KYJjYdYWCT8d8WecKSEFbv/UD25JxcV2QOOuPXbywSScOHNDe0
         otWw==
X-Gm-Message-State: AJIora+ONbgJXUuxRnEH9FAJq2LV/5mdzz3xFOvoAfYLrOgb67xmpX7R
        yQRNDwK5mUGFQlybuKESko2q6pF+EIk=
X-Google-Smtp-Source: AGRyM1usNx6EbutKxnSfxedtAv/FmhUB3NyMyzubMQ8GmCULR1Qtg1kQBmhe9H8r0jShGp7Xco/uUQ==
X-Received: by 2002:a17:902:f68f:b0:16c:2ab9:9bdb with SMTP id l15-20020a170902f68f00b0016c2ab99bdbmr9948495plg.23.1657832486861;
        Thu, 14 Jul 2022 14:01:26 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id ot8-20020a17090b3b4800b001ef89019352sm10289588pjb.3.2022.07.14.14.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 14:01:26 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add Asus GT-AX6000 based on BCM4912
Date:   Thu, 14 Jul 2022 14:01:24 -0700
Message-Id: <20220714210124.1389433-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220713200351.28526-1-zajec5@gmail.com>
References: <20220713200351.28526-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 13 Jul 2022 22:03:50 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> It's a home router, the first BCM4912 SoC based public device.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
