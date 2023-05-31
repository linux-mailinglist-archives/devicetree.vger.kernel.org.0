Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 167A5717B7E
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 11:13:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234905AbjEaJND (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 05:13:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235030AbjEaJNC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 05:13:02 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E6E810E
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 02:12:56 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-30789a4c537so3865541f8f.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 02:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685524375; x=1688116375;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b+YQlgx1VFjGNM9jR4+GNT4YtqTgZVS0cajTtQFZxPY=;
        b=TxgwASoWbYILqZMx1W+qJLLjUFcaq8VRufal5QmKv95NcDXZwa2NneqoeYjhsD96/0
         wfqjbVUm2NUBapNFOcmvDvKAIhr6DzfTL3C7JBNsury9sdT8Ujc4dQpyMOzSIyrElG/D
         MJ5JrgN92GvFuSM8u+O+P72L9t81wLayJDnPoe5M0IejPqt8abZAeBYRGt3sJCPPmX9k
         llGPNvd7wKwPetElGvsC5pbltpMWAQ6GIWef6E2fV83EdFR3yjyF37SMHYO28qItls3k
         prYaYkggSzcB67YRUUSkdSFT2WLspoPtqDHCq1+M8E4aJwC8Dj7u/HSwRbR833CoGbAx
         kGgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685524375; x=1688116375;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b+YQlgx1VFjGNM9jR4+GNT4YtqTgZVS0cajTtQFZxPY=;
        b=JOA/H4cD6kzSK+hRy56nAf0I7poopfo6/WjU/q3F8PFaGHqFi8qsule6o1rSJ1O1Zd
         AyAwzWmZ4DlIwIP1KM08TvogjnFbrOGYuiMnYQraWcgzaTJixqyjjO1OI5NWBipuHJ4E
         cyorWUEsl77noauJlQkM5nDlYjEwjUyFvpfsXpjqWUPsdRaLzji/Nqpr7wzI7KO9O+6q
         LHdEXukmyQKzRkklegmJQaWu5aaT0Iwz3bGrGollnneFBkfHXMHZGSwgQxSQvcYgJi5H
         dPX1SUs+n3O4l8ueni8AFVCXy+NeECT4GMjJcC8rzkBl3YSXG8+9ncspeLDtEriZmEvC
         SGXw==
X-Gm-Message-State: AC+VfDz6noqZ56BdsFOsC8+MDfFSmNlLNXre5wibn6DnlM+IPGmXCt2s
        4v0I9dfV8OcyYxcoPunqdh0bQw==
X-Google-Smtp-Source: ACHHUZ63Rq1SiIBEGY8gi25g6h2KtY943yA6ZZTaGh4uMaC/0fDaORIAd9BOP/nEMenZLdqK/Nut7w==
X-Received: by 2002:a5d:5150:0:b0:30a:e973:b182 with SMTP id u16-20020a5d5150000000b0030ae973b182mr3192370wrt.1.1685524374979;
        Wed, 31 May 2023 02:12:54 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id cs1-20020a056000088100b002e5f6f8fc4fsm6117294wrb.100.2023.05.31.02.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 02:12:54 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
In-Reply-To: <20230531000259.3758235-1-dmitry.baryshkov@linaro.org>
References: <20230531000259.3758235-1-dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v3 0/3] drm/bridge: display-connector: add external
 supply support
Message-Id: <168552437407.2007178.8614236021819101690.b4-ty@linaro.org>
Date:   Wed, 31 May 2023 11:12:54 +0200
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

Hi,

On Wed, 31 May 2023 03:02:56 +0300, Dmitry Baryshkov wrote:
> On some devices the 5V pin of the HDMI connector and/or the ESD
> protection logic is powered on by a separate regulator. The dp-connector
> for such usecases provides dp-pwr supply support. Follow this example
> and make hdmi-connector support the hdmi-pwr supply.
> 
> Changes since v2:
> - Changed to use proper supply name instead of hardcoded "dp-pwr" (Neil)
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/3] dt-bindings: display: hdmi-connector: add hdmi-pwr supply
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=41b74821751466457dc8b87606ac4d71ec568d4e
[2/3] drm/bridge: display-connector: rename dp_pwr to connector_pwr
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=99304fd0050314a0c998c28300393ec574998db9
[3/3] drm/bridge: display-connector: handle hdmi-pwr supply
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=6eb6b6f0a012993070b26dacb5ea1ff5fc233c18

-- 
Neil

