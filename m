Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4B86549D05
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 21:10:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348780AbiFMTKw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 15:10:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351352AbiFMTJ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 15:09:56 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87E8B26D1
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 10:08:31 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id y13-20020a17090a154d00b001eaaa3b9b8dso3692253pja.2
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 10:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9BRUSjFdf8caOJguWY1nnRjK6EgjDSSb/DcnbNJxP1U=;
        b=Z9+9G1BG+p/hKmV549g45O1q4VTqeHS9IUrmT22Diyg8hnpEq3eKWEmbYwLsTqH8Qu
         9ECPevoZeRVGZtzmojLDSx5sWRIxe+riGIZYFwz3Gz9lJ5PyZIZqNA0jjx2G2ozgUkSf
         x3E1RI7YsADCBaiPBejRF0CCHrGtHoy1o01FCTgy3TomkX+RfciG5Y1KZa3oAaaWzHFv
         Fq6snmnZpfw6hhQYmSVeWQfHfBZGyoZ1lqNWC10aY4+CXUAqsu/jA1HSyci1zCKrGhiT
         HrZOdZm5EKfHXNhnyF+yHeHy4VEiSGI1ohF+IymKeG8AafLmv80KvxGho1trQwwEey9F
         U84A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9BRUSjFdf8caOJguWY1nnRjK6EgjDSSb/DcnbNJxP1U=;
        b=Ok7P9sxXChLy4zzXXiXyagbQjPgurlwsuLxzqfhCjTZnlm9qX+FNMWFLTchvkzDQr3
         q/vuP38m4GBRRYdcatyge0xqYIyHUPuSqzmfDE9qttj4QEt9wniM1my70El1UH8twLvB
         ot/UFKbpFoSz0IyFQeivcmRJKEr1k72VwccpAWAPUAyNHHCic8FkeQUwww4CshWuy4xU
         sFoksA0hN/ecFyUBud6ziwaJtrobveXUq93NQ7iwB8GC+CmaMZNruqXZSTklMrjKTodP
         qRiLjvrNtu/JSn+cAl0h7V/cTvEICQpIXhoToFB1CcOd5xEKeYjjq6MIQilSrQNYhAwr
         DSSw==
X-Gm-Message-State: AJIora+MHApL1j+t1Z+Vb8r9evmXsD3NgwtVnmAbmZV9nLTcZijaGwV3
        XmU+VjABjjfrONlsnElJ/00=
X-Google-Smtp-Source: AGRyM1s9m5eBvIotPjXn9XSZIR3fmtaxBpNZ89CJ3IkrEwLct92plDWrHE5Fs3tNekbPUW1ft43uFA==
X-Received: by 2002:a17:902:6845:b0:168:b675:39e2 with SMTP id f5-20020a170902684500b00168b67539e2mr286379pln.33.1655140110977;
        Mon, 13 Jun 2022 10:08:30 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id ay21-20020a056a00301500b0051bc3a2355csm5615228pfb.64.2022.06.13.10.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 10:08:30 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Peter Robinson <pbrobinson@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>, Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        javierm@redhat.com, linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v6 5/6] ARM: configs: Enable DRM_V3D
Date:   Mon, 13 Jun 2022 10:08:28 -0700
Message-Id: <20220613170828.238070-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220603092610.1909675-6-pbrobinson@gmail.com>
References: <20220603092610.1909675-1-pbrobinson@gmail.com> <20220603092610.1909675-6-pbrobinson@gmail.com>
MIME-Version: 1.0
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

On Fri,  3 Jun 2022 10:26:09 +0100, Peter Robinson <pbrobinson@gmail.com> wrote:
> BCM2711, the SoC used on the Raspberry Pi 4 has a different 3D
> render GPU IP than its predecessors. Enable it it on multi v7
> and bcm2835 configs.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> Reviewed-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/defconfig/next, thanks!
--
Florian
