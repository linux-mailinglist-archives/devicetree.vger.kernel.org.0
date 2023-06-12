Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13B7C72BCF7
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 11:47:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230208AbjFLJrq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 05:47:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231684AbjFLJrL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 05:47:11 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D6745266
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:34:15 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5162d2373cdso7406445a12.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686562396; x=1689154396;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uw2vt//oAwfRUDirKEfuFTfUTv7LIcANL47GaMhJ2HY=;
        b=tvljEK9M9gicBQPrr2CvNMR0e2D10EWl3TIXpZe8jfDI9UB/j1pUJcHMOgNNVrLmnB
         CroIaJhnNHy9vKCpoAFHXsQrGEf9K2Lx4N0Nfvmlvig51euRaPlEj2yr1FgyXDM0I65P
         xmBJ0QtcIyx+yxX+Pk0uaDHuQUk2P2u/nwCPJqydxAwRgTzWP8gYMvwEvOZxWnLtJKw+
         7EEnsDkLGlaRB7lssdiIVnPVXxI30A99q6MhZS9zkovz9EJ9DuE7N6lUfsMwVLjgxH6Q
         fEX08uTQjGMpURhdBUovE0+AUEYg1i2+70WYWT6RRt0Z9FwkM5o5JX64JstJ82f6Pe1N
         XGqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686562396; x=1689154396;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uw2vt//oAwfRUDirKEfuFTfUTv7LIcANL47GaMhJ2HY=;
        b=FLa99zCj0zpcD1PQcrSY35LdSiGVchLGDSfEkI8vIXQiCMoUWVfFTPQq3vFWMKhfP9
         lvE2ECjQC08XqCX5SfwChHeenlA60GcQ0c95OOMZzo2iuyLbtaBnKJB6A6Pr5dmxIedS
         +UZsbi/mdhjna7BtK4fLqyYIEI5kFU0Eqgz4fbQhAmMdxxdyYTL/xR0gZ37NvSy/gta1
         5bwKYv2XhKL8eW4VmpP+JInDkAGkeJqFpFgX5i3oGALiLzqzlAeyz5C8L5x7lmUEEjB7
         3YEve8hq4xZiRKspkXa/Iy4fXI2T1ZI/IGkV8MY+AtOLJKsHwAcdjDPCx32u6ppvm6zM
         jOxw==
X-Gm-Message-State: AC+VfDyvF9WDAwid9Rr4/+1BgkNgNw80Ek/gVTWZPyaC/Vg/G527V7s1
        2maeQFEUTewUCn+qYr9/4LaXTw==
X-Google-Smtp-Source: ACHHUZ4VY3Aoz4gm30K5nUpn2AqyMQacV3tqPC7J4zZGUar4ttwHkuiDYKSoqdModohkXNgm4rVyxg==
X-Received: by 2002:a17:907:16ab:b0:94f:1a23:2f1c with SMTP id hc43-20020a17090716ab00b0094f1a232f1cmr11100570ejc.50.1686562395859;
        Mon, 12 Jun 2023 02:33:15 -0700 (PDT)
Received: from hackbox.lan ([86.121.163.20])
        by smtp.gmail.com with ESMTPSA id gj13-20020a170906e10d00b00965a56f82absm4908151ejb.212.2023.06.12.02.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:33:15 -0700 (PDT)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: clock: imx8m: Add missing interrupt property
Date:   Mon, 12 Jun 2023 12:32:36 +0300
Message-Id: <168656228138.662397.5023054171384904344.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230510065644.1317577-1-alexander.stein@ew.tq-group.com>
References: <20230510065644.1317577-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 10 May 2023 08:56:41 +0200, Alexander Stein wrote:
> All i.MX8M SoC have 2 CCM interrupts, called:
> * Interrupt Request 1
> * Interrupt Request 2
> 
> 

Applied, thanks!

[1/4] dt-bindings: clock: imx8m: Add missing interrupt property
      commit: 6e6bb1639136f36c82efda147b63e2a2197fa3f8

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>
