Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 185F554E5D6
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 17:17:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377345AbiFPPRq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 11:17:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376732AbiFPPRp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 11:17:45 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 335F011468
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 08:17:42 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id c130-20020a1c3588000000b0039c6fd897b4so2997543wma.4
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 08:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oI88Qu4qiMkSjs5momI9WAT894CnS3fhP5J1kHBA0Xw=;
        b=dvH6AD5BOgP7SSTByX9sqdfXDqv0OAOSj6yDH69SlzCgeOMMJ5RggvfLElOU/1QXhq
         jYCoS4+pJ+UoOD+Lc0st87cKPaVMPrifpGWvfdHMjDcxCTaXRalKzy9yr+iVAXSqiqr+
         aG2A6PGYZKOu7X87JiidBlHZRmUpgKqBFxJiXbJ/4siOMyHpspZEp0ToVO0ncipcNHGc
         aX3XRSi6kg50O2HCZvy6xYLEXZSAJpBf/v9MQchyhTE0sFvYza9elswswpa7Korf2ZXc
         K/syg11U9WT7hJ+DHV++210vXWPLaVHF9xyMxRisHNcCdvj3PEJts3hJF3cnEmRdhejl
         EvZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oI88Qu4qiMkSjs5momI9WAT894CnS3fhP5J1kHBA0Xw=;
        b=6+hLErpPQJ9Kj42KjFBDGSXCQ1T8hPHNzQCNwg2esWOuwob4/X+fWCYW7NpMthP+Gt
         /JWLuAzb/mR0ZwovyzegdBfDYR2xp7Vb8p4iLwkZvwtsYYQRoJIg/9JL1slFY3AiQgcP
         UionkThiwPdJIH3RzCpjGHT4uVB7B4rwsyiKVurF4o0gonr+8BSKSh5gXTgbHH25aCdF
         PhMtfVJ4qhIbxtjWoqJOXIpaKmQnmmFYa2g27ubvra5S5X8O03Yq0O13Fw29vsrim7rb
         m3lZJDLdbhcIswWrjUYKk6VuFRoxkEMzYFZxPkDguZ2XSbuj5feaKsFgMfv0expPe9JF
         T4Tw==
X-Gm-Message-State: AJIora9SDjr5jK0jUvqDBAdM51RCM1cCRCTkF8VB3i/5GuAhmIjSGWf+
        5popJNffIksO2PAJlmCgUsxKhg==
X-Google-Smtp-Source: AGRyM1t7s8sG7knah9RyDCtIy/zQzva/JpPwmUWGpQaRjdRRkx4tAVGSo4OZULRC2k5nQVmwxr3X/A==
X-Received: by 2002:a05:600c:2244:b0:39c:4060:1ec9 with SMTP id a4-20020a05600c224400b0039c40601ec9mr5421401wmm.147.1655392660737;
        Thu, 16 Jun 2022 08:17:40 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id j18-20020a5d6052000000b0021a35730281sm1929534wrt.91.2022.06.16.08.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 08:17:40 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     nagasuresh.relli@microchip.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        linux-riscv@lists.infradead.org, robh@kernel.org,
        paul.walmsley@sifive.com, linux-kernel@vger.kernel.org,
        aou@eecs.berkeley.edu, daire.mcnamara@microchip.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] riscv: dts: microchip: remove spi-max-frequency property
Date:   Thu, 16 Jun 2022 16:17:12 +0100
Message-Id: <165539261570.229722.8766263484989186462.b4-ty@microchip.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220616064251.586263-1-nagasuresh.relli@microchip.com>
References: <20220616064251.586263-1-nagasuresh.relli@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

On Thu, 16 Jun 2022 12:12:51 +0530, Nagasuresh Relli wrote:
> Remove the spi-max-frequency property from the spi0 controller
> node as it is supposed to be a per SPI peripheral device property.
> 
> 

Applied to dt-for-next, thanks!

[1/1] riscv: dts: microchip: remove spi-max-frequency property
      https://git.kernel.org/conor/c/3f8ccf5f1a8c

Thanks,
Conor.
