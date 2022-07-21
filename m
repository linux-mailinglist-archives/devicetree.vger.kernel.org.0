Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A193A57D74A
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 01:15:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230349AbiGUXPz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 19:15:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229645AbiGUXPx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 19:15:53 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD3018E4EA
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 16:15:52 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id n10-20020a17090a670a00b001f22ebae50aso2728391pjj.3
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 16:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ORmE8sbkw3cN7Ut0PDTIK1Wex+BTcV5LFugBNAPINE0=;
        b=m4Vrf+k57s4oM7RxN5UL+hL6fmETTKYyfutrtBokqKz16YQ1hL/wdKgZDN+4KsNOQi
         MG+g1q+bqKV1LRIQCRd4Sh9uPj9f/UxUMPOukbze/l606IcPDC0+DvPRKWrHi5U2rZeB
         trNfp3wTgczBKkeW1i2qItgXvz1KUWwKvdcB4xILh8Aci0nvMpcpUohcBVxb/I93xyXW
         O/L1kmfLZBQpGUg64/D4HWTcpZjqngnyIClKRpLAKczb9LYFR3krD3P9z1gQy5SyqPgL
         gsP5u5JweEeZzAHI1cjFubIAdGW0oGd9QtuOv/1Ii7BTKQca0AFq7EtHqdRz+xCUzoaQ
         eGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ORmE8sbkw3cN7Ut0PDTIK1Wex+BTcV5LFugBNAPINE0=;
        b=YhIPTfCqmqnbk7FA4r5rzS/W7q03SF/VIx6UKX3q7KfZB4tHtyPAA5tRWi1PgifuuF
         sC1Sfrk3Edpr/T+FF1DuU1WyhmaaP8LbkWzsQjMMbCpQunS0Hl7zolIeDfUc6zFd1it8
         8hAmrMZFIH1t/oaphTq+cD84ybqE+MzYhiDuDm9c5DajtOLQzACETqu9VQrR6SpKXoTo
         1ZIS/paEgwWCznjqLhyxt778lvQwTgo7Vo4iUn9SM0I2F6A3Qvyrn9ExtBa8CtMpRAhQ
         XOTG963FuFD6V79lLrg5IpipOGFLwghqwWb3x8HPtgR6hIubUEJTNm0C/6oSYKoKvu2T
         /fYg==
X-Gm-Message-State: AJIora9CumaEMg9SCFLXcdCucX8fZmH3cUkDu3pBHkKjaLyOWShw5kc1
        HyPE1hJh7zpncMN0CC+y2Hk=
X-Google-Smtp-Source: AGRyM1vbK2xb0IaK1ncD48I16bFUqalBMXOpowsM2dTl9i+fdM2GHY5B6IDMpQJ/EgwPwFxKWcktRw==
X-Received: by 2002:a17:902:efd5:b0:16d:2da8:64a7 with SMTP id ja21-20020a170902efd500b0016d2da864a7mr581370plb.157.1658445352156;
        Thu, 21 Jul 2022 16:15:52 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id t10-20020a170902e84a00b0016d1b708729sm2253803plg.132.2022.07.21.16.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 16:15:51 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V2 1/3] arm64: dts: broadcom: bcm4908: add remaining LED pins
Date:   Thu, 21 Jul 2022 16:15:50 -0700
Message-Id: <20220721231550.2570978-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220718132100.13277-1-zajec5@gmail.com>
References: <20220718132100.13277-1-zajec5@gmail.com>
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

On Mon, 18 Jul 2022 15:20:58 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Include all 32 pins.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
