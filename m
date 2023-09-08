Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F621798AC3
	for <lists+devicetree@lfdr.de>; Fri,  8 Sep 2023 18:42:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233638AbjIHQmJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Sep 2023 12:42:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231775AbjIHQmJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Sep 2023 12:42:09 -0400
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DC101FCD
        for <devicetree@vger.kernel.org>; Fri,  8 Sep 2023 09:42:05 -0700 (PDT)
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-5732481b22eso1387873eaf.3
        for <devicetree@vger.kernel.org>; Fri, 08 Sep 2023 09:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694191324; x=1694796124; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VQmEH2RUeAXXFD59FSUnwttQ34B6ik0lf7mApX067Aw=;
        b=HArqxooCjn28bqX3wAiEnQoB0zSmcH0OsRYV9OMrgwbUfrhtPTbNZ98uIzVJPYnpdX
         qoGUg4bSafTvMndebgrVGOz/tfPrrR3PCd9Z0fNUoVVJVsigun1V6+hC9Jz904M+DVW1
         tYCcikr8qvjPgsvwM6QXhUjgCpTqDE85mDNlpxncXQiVJIfFXqetzMbj8ju/dXnehRal
         gsnyp5z6WHGFKG2RX++hcB2ULiRhmB8+8bfJbNWhkiUG5en0SK7kfBbV44K7pMjXOeXy
         YDTnAAbrMqJeC3lWmXuP/Hw9CCNVhZSPTIMNLRB3BnZPQVkjeHxdKqTqsJ9jCEi94Klb
         4Prw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694191324; x=1694796124;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VQmEH2RUeAXXFD59FSUnwttQ34B6ik0lf7mApX067Aw=;
        b=Mf1POtTCvIxIBOcymjlxO3qiYhP8kX+cD+G2K5IUkw+d/BKjA/xP/69Yu5oksSIJly
         73XEUeL9n9UPoqmM9oPiMIBW0Z21UdzxDZ+vYX1yOKaZPubfu/QH68UOaE+JaKp5PwI7
         1ft3mcq11pS+8AZvFa8VEtdW84Pcw9DQtji0dLxft+IYcbrYni6lgVBQfyfh1QPkJmRA
         EQYLpgM6gUaA99sdnuRjkQvu2F+1GRZcmYEr8tZuFrqeaG/TG/YRug1zYpCQ5MAqmaUb
         2VyhYHjlWSaBzD4ySeVym+xi1kfn7ujnA9Rst5bNlAJrONuIvLN2swnG+gcHEJsE70Pc
         cxSQ==
X-Gm-Message-State: AOJu0YwdQmVFwloIu096IGJywzixP7fHMw03uDE9vpLDE0d+25rEAJPR
        Kg2cAN7fD44bw0Jl5/4eeft3OJ75sWYCDw==
X-Google-Smtp-Source: AGHT+IGSumNmB0sVbdzjIQNxRbxeSCzW7y1kgY6/94aUZ7liFg79JTMRE0Qa+yvXOOwKE8x+lN/F2w==
X-Received: by 2002:a4a:d291:0:b0:571:28d5:2c71 with SMTP id h17-20020a4ad291000000b0057128d52c71mr3159422oos.2.1694191324308;
        Fri, 08 Sep 2023 09:42:04 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d14-20020a05683018ee00b006b8c277be12sm839485otf.8.2023.09.08.09.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 09:42:04 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, jagan@edgeble.ai,
        heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3] Add Additional Functionality to Indiedroid Nova
Date:   Fri,  8 Sep 2023 11:41:53 -0500
Message-Id: <20230908164156.2846-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Update the Indiedroid Nova device tree to benefit from hardware that
has recently been enabled in the mainline kernel. This includes
enabling the PCI Express bus to activate the RTL8111 ethernet
controller, the USB-A 2.0 ports (USB 3.0 still pending), and the ADC
controller with the boot and recovery buttons.

Chris Morgan (3):
  arm64: dts: rockchip: add PCIe to rk3588s-indiedroid-nova
  arm64: dts: rockchip: add USB2 to rk3588s-indiedroid
  arm64: dts: rockchip: Add saradc node to rk3588s-indiedroid-nova

 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)

-- 
2.34.1

