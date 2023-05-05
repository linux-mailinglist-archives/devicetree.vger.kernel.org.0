Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 245FF6F87FB
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 19:49:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233214AbjEERtj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 13:49:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233213AbjEERtS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 13:49:18 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDA271A48E
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 10:48:48 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-50bcb00a4c2so3293829a12.1
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 10:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683308870; x=1685900870;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2Wzob2dHF0KkWSNjIRIz2tGtcAjsnWSRmcTEAPISVmA=;
        b=q2zdx9ulSlYse92yCHhBae4x+PK8Hejlf0LWzBFknr8Ldbpw26zX0dEXRNVhTFWOpL
         I+OYMYWFWmsfZASQ2o914lqreCQAJRwtNLih4PS8aLD79zddeWZ2I9xEsnA9oka3KG1h
         v4JRqgPLBFqol7AQUMRtucTbS+d/c9krj6adlDrZdOHTg/RCngTF20O1voqZT0hLhcHi
         NczlLjg9WGuUHqBizZDE9FSAfC+q9yW4850ENwU1Mjc06C3gWGCbMXOxBoLO1VDpoUTA
         UDhQNzsjABWRNEjh9uAmDQgudkphJXCSEm4DxySZebBz6hc0qABhJ8CIjJwAg/h/83T4
         kUiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683308870; x=1685900870;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Wzob2dHF0KkWSNjIRIz2tGtcAjsnWSRmcTEAPISVmA=;
        b=YLMyOq3s6LmXs27sHeGryBmPTjA7bXFzhBQHB+Ola/LIo8DdIVcBwLEuDtekkPHJpm
         nqatAg7thyS+j/QFagcE50z5SHQ3l300vg0uNRs0iT8ghThIfN1ASvDahSwGsehgNVPR
         KhwqePvLTFNCKfYRHtCD544I8tPr/p6KuQHFXOoHj/ALnkMgMjEW/ySxLZx+O9Yw2ZoD
         F9rNU0xnbR5v+wM73UV7OxLyq7pxdAT4qJPbyvq+qoKhK/NjAo08LdKJWh97wjrUb6YS
         eZ/z6UJz+OhskuuQG1QTNh7Qg+T38qLQqYDGao8SpDFLZXqaV+QGMcptuAwMRdjavAyW
         OQlg==
X-Gm-Message-State: AC+VfDwXJhIk6C2YjPyqfQSLHAI79n7SpDJ7n04h8kQ2hgyRINDZdBaL
        r9vY56mgOEsszr68V9IKiZJ5RA==
X-Google-Smtp-Source: ACHHUZ6uPKGDcp2DmGLEX3+8Z1M0GITzeM9xO1FejUN7zVZHHMNHwEoHNK54Lh5bglLls5QlQYdr1w==
X-Received: by 2002:a17:907:9415:b0:94f:395b:df1b with SMTP id dk21-20020a170907941500b0094f395bdf1bmr1754098ejc.21.1683308870218;
        Fri, 05 May 2023 10:47:50 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:52e:24ce:bbc1:127d? ([2a02:810d:15c0:828:52e:24ce:bbc1:127d])
        by smtp.gmail.com with ESMTPSA id v12-20020a170906858c00b0095334355a34sm1221569ejx.96.2023.05.05.10.47.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 10:47:49 -0700 (PDT)
Message-ID: <fe8c1063-b8d4-1707-5434-89b3d1edf1a8@linaro.org>
Date:   Fri, 5 May 2023 19:47:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2 3/4] dt-bindings: mmc: fsl-imx-esdhc: remove property
 "fsl,wp-controller"
Content-Language: en-US
To:     haibo.chen@nxp.com, adrian.hunter@intel.com,
        ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
        cniedermaier@dh-electronics.com, devicetree@vger.kernel.org,
        kernel@dh-electronics.com
References: <20230505101246.289278-1-haibo.chen@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230505101246.289278-1-haibo.chen@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/05/2023 12:12, haibo.chen@nxp.com wrote:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> Driver do not use this property, so remove it here.

That's not true, it uses. I got only patch #3 and nothing else.

> 
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml | 6 ------
>  1 file changed, 6 deletions(-)


Best regards,
Krzysztof

