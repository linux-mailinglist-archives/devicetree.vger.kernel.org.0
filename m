Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEA80697FA7
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 16:40:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229791AbjBOPkN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 10:40:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230090AbjBOPkM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 10:40:12 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF374367E3
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 07:40:09 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id k8-20020a05600c1c8800b003dc57ea0dfeso1933076wms.0
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 07:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MtGI9J/URlQIzhyslQIJ/PtbIdSSsHxe7OMQrunObcE=;
        b=XywXSQatpWGLBbnf+u8TcuVykvY+r6jAMWSv6w7lnW/83eLmPLI3GIitWwEETFfgcT
         +Ta1HrXH24igqMqrnEYiYeSmHPmZ16/LsuHqSZG/GbIdpbid3u74j30hvEn1xON5AdQ0
         q08JmEBI9ZqMEo8PDIBXS82K9/BMgRgXFdBYSTHC2dXk1tV0tNO8+gBQfNcy+bP6oC63
         GG+s/A6W/W0Ghst1NU3wzsx1mmw3UsxV/qYKfDOxebiN6dHQ7Weuulzw7MNBZVbVPB7t
         HyuEiHKWE/s59VzA+I6PR4DrWv9x2+y33cwYirX0CB9yM2kVEayJRj0se6zwiILN9ASt
         CGgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MtGI9J/URlQIzhyslQIJ/PtbIdSSsHxe7OMQrunObcE=;
        b=yQQh/C8N3FHiYELxwRS3MUCFgezAvD6/h0QJhs3nqox4djEbdUSue7yBkvbXWdF/7m
         WCX7Bs7tuSxwAJhaw+BTjjWYd9UkBqAWDhS+2YklqzlPlwtGnQawH40PiQo5FyVzF7y3
         d9MAQNGMkbLrCaC/WLjAH07+AAQrKdvUlup77aUC/8t3CfCpsZSu9bTZh91++t7IvA3o
         QJBl2sIpJzh0m3tpKeXnpTACyjn54UuedwiOTZ3kl+8DUALzmBHv9esDj9ldGbFMKHFa
         CVu6JQVgmmfye/sik81hmCxzdK8IYADoVuOyUSvDrwLKSt+xOSrol6FUUTTtm4HJ1/Nt
         FRdQ==
X-Gm-Message-State: AO0yUKXII+6FywD7zZhkyio4qItCc3oIEzfq1mHYTnseepK25WMf3u6x
        QLckf0mVaHwkCrap1cmffXco3A==
X-Google-Smtp-Source: AK7set95w/zG5u61+FNnYv5RUlfIseziLuMFGGTLdZmQSPq7E1qnaOIyhOgeJ7RFGm4KwjY84mBjOQ==
X-Received: by 2002:a05:600c:180a:b0:3df:e41f:8396 with SMTP id n10-20020a05600c180a00b003dfe41f8396mr2327708wmp.37.1676475608523;
        Wed, 15 Feb 2023 07:40:08 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:ea02:3f39:48c0:67ce])
        by smtp.gmail.com with ESMTPSA id j17-20020a05600c191100b003dd1c45a7b0sm2808877wmq.23.2023.02.15.07.40.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Feb 2023 07:40:08 -0800 (PST)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 0/4] arm64: dts: qcom: sa8775p-ride: enable relevant QUPv3 IPs
Date:   Wed, 15 Feb 2023 16:39:58 +0100
Message-Id: <20230215154002.446808-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

This enables the QUPv3 interfaces that are exposed on the sa8775p-ride
board: I2C, SPI and the Bluetooth and GNSS UART ports.

v1 -> v2:
- uart17 is the Bluetooth port, not GNSS
- add uart12 for GNSS too in that case

Bartosz Golaszewski (4):
  arm64: dts: qcom: sa8775p: add the i2c node for sa8775p-ride
  arm64: dts: qcom: sa8775p: add the SPI node for sa8775p-ride
  arm64: dts: qcom: sa8775p: add the GNSS high-speed UART for
    sa8775p-ride
  arm64: dts: qcom: sa8775p: add the BT high-speed UART for sa8775p-ride

 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 100 ++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi     |  87 +++++++++++++++++++
 2 files changed, 187 insertions(+)

-- 
2.37.2

