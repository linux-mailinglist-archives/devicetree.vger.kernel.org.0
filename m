Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CD77718949
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 20:21:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230316AbjEaSVH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 14:21:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230318AbjEaSVC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 14:21:02 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 269FD1A8
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 11:20:57 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-96f850b32caso1119045766b.3
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 11:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685557255; x=1688149255;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i1T0GTPGXW58WMv7iRFoetMGLQWxPwUhy+uBYYQwBrQ=;
        b=RUljuDGZQ+xc1tqWrfne2m4p6nekeCHFYliuni+8zdX2FUrk/lLA9AhUPTZSzBfnAt
         ehNGzmpYe1Kd5mM516HyvfpCvJzHMlV/vAp7pLJ4lGa1vy0Qj59DWYibYcLDyr/BBKVY
         Vm69064WKNMp0kaEtyyJHBmO/zTEhogaatH5dMvvSdTxpjsAhq2EKgZubpGuV7dZm4VF
         C7WR2PqMa9HEGJdla6EQd0+1Kx08nghkMMd83IVBYX6DTgntApqFJDCIyXhPUO8Per3X
         ZuJ6V42lrfYiSDK2QqJazjaezl/O4iH8QV3QZblcA168YT39Owxbsope9rBQLPqraKyr
         mkww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685557255; x=1688149255;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i1T0GTPGXW58WMv7iRFoetMGLQWxPwUhy+uBYYQwBrQ=;
        b=JoOhmYT+D+U3E7h0rg4vYnswQxrf4Dw6cLDNsT+JGXjZsEqkRkgUUf8f+DOJ7GV6v1
         GuQ8DXCQU7DXUsWvnPpBjlPPDgjF6vT5xvaUI+9n8vUh1+tdWsrB4zrfM/PQ9xzpA/dI
         loV4nFnOHTFsNbKdPWSPi3ITMGaRVS70OSMabGZWTmjjBLOvkA9miq8uWOjN/OEPXibh
         v+tPQC6jdbxbOqk88k2xFjlQtVcOUnbahfm3hqdN4/qQpwuSJ6+1L7oIxHm4ylDs/DD6
         fHzV+wiqwCxWMk0MlDTE7jjm4smSYEAAhE9qcpI572rl1KO0Hok5iOw9YrHvXZtJN7sX
         G6pA==
X-Gm-Message-State: AC+VfDwzLa395XQ3plDDNOjscUxmiIU057MkQMEFw/kuJQf+KKCbpFCP
        sFh+tZLlGO9AUB3Rq94zC83cbw==
X-Google-Smtp-Source: ACHHUZ6j2/tD4LCUjTT2RVx/mXxK7yKQZJ1QwN4PQ3FTEquaIlsa3kjWbZDdeZbOsRdvp9vBW/lKXQ==
X-Received: by 2002:a17:906:6a19:b0:974:1d8b:ca5f with SMTP id qw25-20020a1709066a1900b009741d8bca5fmr5717416ejc.9.1685557255491;
        Wed, 31 May 2023 11:20:55 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id v15-20020a170906338f00b009663cf5dc3bsm9320865eja.53.2023.05.31.11.20.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 11:20:55 -0700 (PDT)
Message-ID: <7b08af5b-650c-677f-54ad-e2511b169489@linaro.org>
Date:   Wed, 31 May 2023 20:20:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2] dt-bindings: net: Add QCA2066 Bluetooth
Content-Language: en-US
To:     Tim Jiang <quic_tjiang@quicinc.com>,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_bgodavar@quicinc.com,
        quic_hemantg@quicinc.com
References: <20230530082922.2208-1-quic_tjiang@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230530082922.2208-1-quic_tjiang@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/05/2023 10:29, Tim Jiang wrote:
> Add bindings for the QCA2066 chipset.

Do not send bindings separate from their user. This is one patchset
consisting of multiple patches:
1. Bindings,
2. Users of bindings: drivers or DTS


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

