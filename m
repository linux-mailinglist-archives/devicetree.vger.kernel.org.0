Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0717F718289
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 15:44:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236625AbjEaNoI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 09:44:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236627AbjEaNnY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 09:43:24 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E84C19F
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 06:42:08 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f6ffc2b314so7845525e9.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 06:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685540518; x=1688132518;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cUu2HYss4MotQjEaEN5+g7Y/p+npUsHe7h5zD8Ch35k=;
        b=iyOXH6r5ex7cD9blTkQTqC+7tIdJ1KIbjobM6fkJiaErKMw3w6hGc0FnsbjYfzxdFP
         nLsi0UwbqkkGSWfyU7CIEMp+fl6lLF3IeXIltHVIwS6nMLQigcxhs/fVy5o44j2nVDqR
         V1JY5fCMMwGsjlUSHevAWVGJ3EgpSm9rdauHN5Z6i62PaJqV9qP/G4lfURwFW37hLlql
         NQ7K3epxd/y0BOutQPz9IZAk23UH1cWmg61VFlWlvDQmzCIhHLkWTgbGLorlNrdwDDeN
         m16raT1Km1CS1sVoYGe6/q5IQccab6v8qf9axMMGedEwJrb8fFsgwiT+GOc9fP4hVOFa
         D0pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685540518; x=1688132518;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cUu2HYss4MotQjEaEN5+g7Y/p+npUsHe7h5zD8Ch35k=;
        b=EojRwRJvwC23lSxlo3sOrWHdPhKQcI7WRRB6WEnSaMKJDxWc/PQK8fWa3PBY3Txx/l
         +N1sDBPalWtTlLFRLUVAzeriHNnHgLuLJwPcXXiK9tv9ckn3imLdWlKdHY9FtlGH/757
         t5AiX3eXZjw83U1fjLuoa4SNIB1R+uf8uKwYB2PKjvuUoidY6EvmjITQRGhIqw2eTbjR
         R1bzuwO4014RZEXibdqcA4sNOIiZfON9qKAhxjghgiW/5O1AB+rxeVKny1kLFeiGQilF
         kpJAS+YcIZ7C9k4YkC7IxlZBhvjNIDK4LY8An28x+Qg3rFUjHdvX13CA7epWqkEHsB+6
         oRIw==
X-Gm-Message-State: AC+VfDx5YnmqyygqUsRJiIXGyE6AS6+tsKo8hfxwQwVwQyS4A+r535LS
        B1rH2WTGlyYfDbRmQ3DPaB8ADA==
X-Google-Smtp-Source: ACHHUZ7WUgCkaiRdSc/62TIDOvvi7CqZ17+MyfatuGpFtn4k7/XuFS7rtWqf3IQfAttKb2reVrKOPw==
X-Received: by 2002:a05:600c:82c5:b0:3f5:a54:9f97 with SMTP id eo5-20020a05600c82c500b003f50a549f97mr13001896wmb.0.1685540518310;
        Wed, 31 May 2023 06:41:58 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id c3-20020a05600c0ac300b003f50e88ffc1sm24679614wmr.0.2023.05.31.06.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 06:41:57 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc:     shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>
In-Reply-To: <20230508114639.1525521-1-peng.fan@oss.nxp.com>
References: <20230508114639.1525521-1-peng.fan@oss.nxp.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: nvmem: imx-ocotp: support i.MX93
Message-Id: <168554051714.102767.16636791437513970284.b4-ty@linaro.org>
Date:   Wed, 31 May 2023 14:41:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 08 May 2023 19:46:38 +0800, Peng Fan (OSS) wrote:
> Add i.MX93 OCOTP support
> 
> 

Applied, thanks!

[1/2] dt-bindings: nvmem: imx-ocotp: support i.MX93
      commit: 42d033c4e47b9490cd9351c0eacb0b7dedb179e4
[2/2] nvmem: imx: support i.MX93 OCOTP
      commit: 4d47e9a76d5fd3008e69c91dccfb52ca02624c5a

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

