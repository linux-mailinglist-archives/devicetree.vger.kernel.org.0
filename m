Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5F9B7194C0
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 09:52:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231409AbjFAHwn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 03:52:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231792AbjFAHui (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 03:50:38 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D57510C1
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 00:45:20 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-30c2bd52f82so551076f8f.3
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 00:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685605519; x=1688197519;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=woDAE++Zg73zRjlY+4xP0lpdNhv9eVpF353qfmqW4BU=;
        b=j86Q3LB3vGRcj6dukROKBfX+FILtVy8z/lVwsFHQ44+O8eDJcQHMYXQ90+sf8ZeTy1
         tAx6cdUNfhspUMeyyE8DmXTJvmSadpFdZ1pu821OjFwZi/yT6iGlyl1CvgFHid5GnUTR
         wQOcjMRevPoE334GnZrAeZuEkste9+buDelCzzL9fk+mQD7G4emVEEk6vqkjdJwMvuqn
         XKVQNT1g9/TlEVH+1vZlCmTRqYS+W8Kfw44UfIy5QRL/YhOlYGT1jCo4POBzku3O7dUd
         +YbQ8QIecORY4u7YJjtKnmlW9dMp1cUiBU91+ZUNSDMxaUcmS+dd/vqnRsDAROhlGA1t
         VRZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685605519; x=1688197519;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=woDAE++Zg73zRjlY+4xP0lpdNhv9eVpF353qfmqW4BU=;
        b=NHsfach4DUm2BbYtFNd83ROyyFcW25HiclSpXTUBajOR69tU2Dyxz3aFRQFaaeS+GT
         Fj3/QDtmB0XiYwKg1n317v4yTkmdv1fignnxm0JFx16iNPWn/g51G/ZTWx2bXXegMv6o
         4UanFCTYil2LZOX/hnt3PkbUZj2MPrEj8dwskmSS2B2Es4VpL1kOOmkPKMI76ELpz85J
         YUdfTZlxfPR28EYygCDAlvUfBc4I/GA74quCff381L/YckBN4WthLPZaSc0lPI7jGKzT
         bWE3XLrxjxmnx6Bh5aMI2kdZgsgNj8MzQzizjgJIVc5bmAM/cyA1wTv3xE/YEnKD8i+x
         VEfQ==
X-Gm-Message-State: AC+VfDwcAcLXCxkMjGeMxeB3gIujAM6sTiPNfiviQBhOh232DLjrXHL5
        u77hOEyRjS0T4XfyC7iGnK7yVA==
X-Google-Smtp-Source: ACHHUZ6vIXoh57PrLpvJ8HKD6eldePJqfKs2hjbSEbNEXkMzSbFwNDg4biqP3bCKvLERofyfJCPqpg==
X-Received: by 2002:a05:6000:ce:b0:30a:ebe2:5e44 with SMTP id q14-20020a05600000ce00b0030aebe25e44mr1015635wrx.67.1685605518811;
        Thu, 01 Jun 2023 00:45:18 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id g15-20020adff40f000000b00307972e46fasm9240526wro.107.2023.06.01.00.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jun 2023 00:45:18 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
In-Reply-To: <20230531224407.1611952-1-festevam@gmail.com>
References: <20230531224407.1611952-1-festevam@gmail.com>
Subject: Re: [PATCH v2] dt-bindings: samsung,mipi-dsim: Use port-base
 reference
Message-Id: <168560551794.3235338.10492329758056860789.b4-ty@linaro.org>
Date:   Thu, 01 Jun 2023 09:45:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, 31 May 2023 19:44:07 -0300, Fabio Estevam wrote:
> Use port-base reference for port@1.
> 
> This fixes the following schema warning:
> 
> imx8mp-dhcom-pdk3.dtb: dsi@32e60000: ports:port@1:endpoint: Unevaluated properties are not allowed ('data-lanes' was unexpected)
> From schema: Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/1] dt-bindings: samsung,mipi-dsim: Use port-base reference
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=54df4868fb728bebbb0fb7c3f187eba383e922b5

-- 
Neil

