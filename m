Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 100A654EB95
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 22:49:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378748AbiFPUsV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 16:48:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378730AbiFPUsF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 16:48:05 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1AE4403C8
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:48:01 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d5so2173819plo.12
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=6d9839Pby3luvocQiG1iEeRMxGaVYUiIzYIGZf66yZM=;
        b=zighhZuKHzds+2VJEIzF5vuqJDL+HQRxdNX7V6DMo330mDSdpYm1eP7oYjZzFPRDw4
         hNAzQyzVlZqzCTXUul28y3D8zk5QE3JbNCTY2EkqsUu8mgw4dcgdftlzRMZDhjIF0UVU
         +mn6I2fXIsBpZ8kfhCynHAF8g3VKEU8aC9W3PWffb7W+6xxI6zEj6q1Vq4LiKlBMD7gw
         i1akgEYJI89hkTDTtoMUTE1Qqb/RP/jTK5p/f9rhkQdnsMMZVke7iUxUpbR+8q8py8eC
         x0jteKoLeVIpdjRA6XzyMNwSXoPOzW9cnH1jWuN9VHRZ2qy5mVzKyPumJITpda+RwufM
         axAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6d9839Pby3luvocQiG1iEeRMxGaVYUiIzYIGZf66yZM=;
        b=CkPi+eFizDKFWasRf6HzMXEsMNp5FcmhcAgvbf7g1iQs0fU5Ato9uRxcHiLGe8joNT
         II55+C4BBEe2IkNv3TZhxRH1N5ThswgPHfoXGuVdGxF5y3ECYVMwnYphbUaVVFy19aq/
         Ar7DpkffXye4EgHzk+9oaAjuTb8sL4xFIWZSpD9HOo2BIMtfA/NX5FoYh3dUevyWUwaC
         OI+8rD4nq+P7c8oiiyd+uHAO9dIb3VHU8kTxTvXagyQ8hKPAuKtjObS6EftNUExYQhxF
         q0RR7qFkT8Pmj3xTXqhm6f55bS//1Z9pDFqL9k1V+fT+/tGgTSMP/OsT4CWDRH58r5qI
         Iz1w==
X-Gm-Message-State: AJIora927fDMfAvXq5U7utkACSQe2WDnK2oUpQEV0C8U8BQsCmOOwHAR
        dgoRUl66c4aWiKmPxG2vW3vgRmK+Tub3QA==
X-Google-Smtp-Source: AGRyM1v5zdohppxAKT9IHUnEhtKpMn5Ft060nX85SOz1DVcpU0ViuqtQYDayePUp6sjwwPIIvA+L7g==
X-Received: by 2002:a17:90b:388f:b0:1e8:5df5:b2a3 with SMTP id mu15-20020a17090b388f00b001e85df5b2a3mr6988661pjb.70.1655412481628;
        Thu, 16 Jun 2022 13:48:01 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id 203-20020a6218d4000000b0051ba0ee30cbsm2165453pfy.128.2022.06.16.13.48.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:48:01 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: ste: adjust whitespace around '='
Date:   Thu, 16 Jun 2022 13:47:23 -0700
Message-Id: <165541242280.9040.8439318762865273659.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526203656.831126-1-krzysztof.kozlowski@linaro.org>
References: <20220526203656.831126-1-krzysztof.kozlowski@linaro.org>
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

On Thu, 26 May 2022 22:36:56 +0200, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> 

Applied, thanks!

[1/1] ARM: dts: ste: adjust whitespace around '='
      https://git.kernel.org/krzk/linux/c/282a4b9ee9ec8cf8c5e516d127b065318a376289

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
