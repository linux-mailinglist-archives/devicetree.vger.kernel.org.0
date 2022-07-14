Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62B175756B3
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 23:02:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234864AbiGNVCD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 17:02:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230310AbiGNVCD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 17:02:03 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B0CF6C109
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 14:02:02 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id k19so1496716pll.5
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 14:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=H+o5JNXjOn/0lEd+Oro8mxDalv21GnZxjPCpALXlUjk=;
        b=Y2pZrnh9N8+tSCeiV9sFSKqIAM3LJjc9f4KFyTjLaNJrNz9ShF58mSLWWetjmB1Xy0
         nUZmwl2mVmdV2JWJMvW6HU+fNyIBMgnF9f0xPGRb0z+7jhs39nDpPht2ziUAj6Xoir5m
         azmlvCJzkKVw041AHD74AViYMKtOfFUIfsVxCtTEMwxArJ3aDOgNvVtL3BRPGPJGEbh5
         maYhDl0ULVzHT+Ec4XKwAvDrtlbyTvk7bFtNMQkBFf1V9j2FmRmVXITZtKHg5mife1G5
         hwwbhWmRgq3KTJOvW9ATpu/GXj0KK09yf5pV7KDVsxnNGzc6eqcmEKVryPxDb5dwBGgS
         cGNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=H+o5JNXjOn/0lEd+Oro8mxDalv21GnZxjPCpALXlUjk=;
        b=0OKUtUxnQbSXDHdp2wRtgJW3JhJlt+9mROMEQdpB5bcL7IDCHIMVy27+WAFa50Tb0h
         lnqb/sIDvZXA7q0oousUmmob+JhZwMNFvEEnpIv0gyRB5CL8DFr3kZ3e4ZxG2evrBYMc
         JVOd/5wuqRCLkdP2XrCadoh76LuotZkIJmMzIlRJqy6JwNA4TFsifL0rvxQdyTjzJ7sw
         tz7mNZMBupZLxEwrTDgb0Bv/SIfqqF2e9fsT+dVLuaUEVduzs7qc+wkYQqRl4pTGWovR
         aWeJ/K0E919b3Gmi0HUEIqrSVNUhRrjghFJbwAYxKjnWQ8aFw8sNYxbQW6GXyopRJswt
         CmNw==
X-Gm-Message-State: AJIora+cu9nkHSjHhbIPiAx6A/w/wz6xc+wMM8MPwrvs4hC4iI99qLqU
        RlXEn1onvLLharkQTldSRTw=
X-Google-Smtp-Source: AGRyM1veWKW9TVbHPaQTC7yYwIMSEpl07C8I4Mh2l5h6rpKC2osrDAJLgVS6DibEfsZ2GkIhJpnBzg==
X-Received: by 2002:a17:90a:430b:b0:1f0:beb5:5932 with SMTP id q11-20020a17090a430b00b001f0beb55932mr5273160pjg.27.1657832521855;
        Thu, 14 Jul 2022 14:02:01 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id b68-20020a62cf47000000b0052ab92772a0sm2187053pfg.98.2022.07.14.14.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 14:02:01 -0700 (PDT)
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
Subject: Re: [PATCH 2/2] arm64: dts: Add base DTS file for bcmbca device Asus GT-AX6000
Date:   Thu, 14 Jul 2022 14:01:59 -0700
Message-Id: <20220714210159.1389656-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220713200351.28526-2-zajec5@gmail.com>
References: <20220713200351.28526-1-zajec5@gmail.com> <20220713200351.28526-2-zajec5@gmail.com>
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

On Wed, 13 Jul 2022 22:03:51 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> It's a home router with 1 GiB of RAM, 6 Ethernet ports, 2 USB ports.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
