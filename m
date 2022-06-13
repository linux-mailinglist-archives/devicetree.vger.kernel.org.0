Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 838BC549CFE
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 21:10:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348594AbiFMTKv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 15:10:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349981AbiFMTJH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 15:09:07 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB65E25C40
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 10:07:51 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id 15so6295224pfy.3
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 10:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eAH8FOzSxZNF4KtNc6UxLfkJY7ofAKT92ulnqloHmyU=;
        b=G2j5V4T3mSrSLcy/D2hdEh+Ny7FIJXBHTM+jqfw0dE589mimmnYbaPMGmA5f/w93Jc
         IaxYvmciVtsxRsXCEKq0dLnvJDgXWw4ECLjhbyEMQhCdAfY8hExHddKn+EMHU7IxTl85
         o3crQKW4TSQrcxr1c2vKHO4ga2mYiMyf8ywKLjYvtHpOYDJ0PlSdb6APFofTQUCGXfQi
         p7q0c7wcTLr8Ztij54+RmdIeBXRQ+8jyFiWXxUaoIRsUDcgfkLh6ZjTweAjVrgIA1gJa
         YTtrAj1DjPpXA8gyUMst55uwdyahoP4+tsMTJ77T2lfu0D8omV6nopOnifTvCo4RSj4F
         STEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eAH8FOzSxZNF4KtNc6UxLfkJY7ofAKT92ulnqloHmyU=;
        b=jtjVMoQ3VSW2/sM37H3gMK2r/sAwHqbCpEy1SkzsmRazOe64ygMjfyxAxp+4lJOOaU
         8HHDrGSCuswn2BMk9OGVuQtckbzSBC16K4ec/EzcYRxB9Go1th0RmR6SrrNZCXNYqm2l
         a9uoO8yWwLC8cZoXBEulh+oVwzQjLUbyfnfW6PSmbkakrjGG/opYPT1eUnbLvo6alPvI
         wtHcqx2OT802S3asSem92jh2aAwwldEbLWbqfe2n8qe+V8gtY0neTE/W8o+mjEGmFZMR
         F8uKQUsF1IVAh7kpU2EmmyRMLz2Eoec93kd2fnbI5A/m9xhDDMlljhTh/Px4UyZiBAJs
         BiRw==
X-Gm-Message-State: AOAM532GAhfjZyFv8Bpmy3hIwfllSIP8UsdL42qpEh9HARKd6AT4dpsd
        hb3gqnxVqTWYczGNUpnrDqQ=
X-Google-Smtp-Source: ABdhPJw17IOWEYRzt1gG8ccPm0koQcTR5jZhAT2yAAS5Qfjyots/7DwkmkQno3xELxU8GbpuMdyuIw==
X-Received: by 2002:a63:90c1:0:b0:3fc:7de1:b2b9 with SMTP id a184-20020a6390c1000000b003fc7de1b2b9mr521343pge.440.1655140071302;
        Mon, 13 Jun 2022 10:07:51 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id a27-20020a637f1b000000b0040898e7e30csm1134969pgd.94.2022.06.13.10.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 10:07:50 -0700 (PDT)
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
Subject: Re: [PATCH v6 4/6] ARM: dts: bcm2711: Enable V3D
Date:   Mon, 13 Jun 2022 10:07:49 -0700
Message-Id: <20220613170749.237882-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220603092610.1909675-5-pbrobinson@gmail.com>
References: <20220603092610.1909675-1-pbrobinson@gmail.com> <20220603092610.1909675-5-pbrobinson@gmail.com>
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

On Fri,  3 Jun 2022 10:26:08 +0100, Peter Robinson <pbrobinson@gmail.com> wrote:
> This adds the entry for V3D for bcm2711 (used in the Raspberry Pi 4)
> and the associated firmware clock entry.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
