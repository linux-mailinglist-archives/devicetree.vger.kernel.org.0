Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F47E623269
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 19:26:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230469AbiKIS0F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 13:26:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231133AbiKIS0D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 13:26:03 -0500
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A00B612A8F
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 10:26:01 -0800 (PST)
Received: by mail-qv1-xf29.google.com with SMTP id x13so12858465qvn.6
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 10:26:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D+tqs5fQry6Tw/DDAnF4KZ/MNuj+doHMiDhwHdifa6M=;
        b=VrRWIHiqwPp5VlF2eN15/M4QNK9MWlzquqU6TANWjrabXNiy8jOo4VUFVBc5cx4Kql
         EgFF7l+ulZHf7M6/4ivdP+WWxcOEup/wQ25M0hiZ+CWCpygDO1cbIvENQQa2rYKbJpAO
         cviolH9lpHtZqp0+9XRoAec1JYi5dIpIbSOZphRHdGn0NdAamO7JrZJLkxETwtVvb0Bt
         CfYKEurZgEdA250sHw7c4UscluBH48V1j8LW9S5fsIWryDfZ1cILI1PZ0EHx1Gu7jzfB
         inUrDwT1CiHjV5m2hjmKWTXs/aTgGT5sLYL0u5+vgbAtIfMDvHrYzAz9ZJgLN15l2Vnu
         NHNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D+tqs5fQry6Tw/DDAnF4KZ/MNuj+doHMiDhwHdifa6M=;
        b=AVD0xcG9mhr8Il4pQHiEZf0kjUtu0YI4bytbEk+pOUVPKMuAy3db2vXdW3u/7R1sdt
         T8YXy6FNHTam0hxlWkSo3Cm9SKxgCcEt8f2xBobHGaBaXD1LqafBEGCOJ+kB8Kj9aBRm
         fY1XbnaLZs/vIKTfJRZYbxnAuhateyF+59OxqbrcavNaS4hkpwzU+T6TlhhXlIyGI/+T
         Nq3cdm5FTACn6kj/K/8jrjUNoxBt1jKdls9eIx41qwqEVkmb6yehJ0TnZa55heS3tdqq
         b210ciFwe60ucWFb5mwi6W68QaBS+Dvhi+0LQn+M1aYQiRgcpNfEJbqeDmIF9lT78/xX
         bPGg==
X-Gm-Message-State: ACrzQf0y0M83c2YbWSB2+qLzRS4vkGd5caibkDNPnr4+zO3aVRqeDdHx
        s3ygoszIe4nbY41yd9ON7uA=
X-Google-Smtp-Source: AMsMyM52CLhqrr1/vVn43Uo5BVbXgzadpw2jSXcri++8zhyGE5FHP4inhmAlp702APgD13lh60hxHw==
X-Received: by 2002:a05:6214:19e3:b0:4b6:8a99:3054 with SMTP id q3-20020a05621419e300b004b68a993054mr55266119qvc.108.1668018360747;
        Wed, 09 Nov 2022 10:26:00 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s3-20020a05620a29c300b006fa4ac86bfbsm11620648qkp.55.2022.11.09.10.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Nov 2022 10:26:00 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Linus Walleij <linus.walleij@linaro.org>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: ARM: add bindings for the D-Link DIR-890L
Date:   Wed,  9 Nov 2022 10:25:58 -0800
Message-Id: <20221109182558.879705-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221107134104.1422169-1-linus.walleij@linaro.org>
References: <20221107134104.1422169-1-linus.walleij@linaro.org>
MIME-Version: 1.0
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

On Mon,  7 Nov 2022 14:41:03 +0100, Linus Walleij <linus.walleij@linaro.org> wrote:
> The DIR-890L is a router similar to DIR-885L just a bit different.
> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
