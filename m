Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FECB768FA4
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 10:08:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229902AbjGaIIR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 04:08:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231937AbjGaIHx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 04:07:53 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00ECA183
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 01:04:23 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4fe21e7f3d1so3874948e87.3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 01:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690790662; x=1691395462;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=StAWhWSGGkB4cU1h2MbOyD2Qpbf/SYmtGySN280LVYA=;
        b=nHDjFdBE0M6xsZcJW2YM/1xRTGhGDmxFKq9HIRpAQBMI0Yc7LVCnVTnuO3gOGD97Sj
         A5bPcDV87l386ShFW8NMoHayfvvgL3/Ee/DYWOdLGDJrdBGslLh5DrlH0BixYxkQRs9x
         asVIcshh+1nBMUfG7RzPBWSFwar1Aro4LjIrTZRzMV4OMTqzxVBPgQMDI8ledSUxtqE9
         K3eVhFyFxcdqyKbQ0dqspCQrlbPL3KeGtJ+eWU1w0lVswqKC05kqFsD6ui16p2xx2J2R
         y92A7gbSSEeBk3fEDumYyCdzrL3HT1/Yx/vUnQpUhLnL+Zk0kEUmlXmKJb5Y+vFHek+E
         i+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690790662; x=1691395462;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=StAWhWSGGkB4cU1h2MbOyD2Qpbf/SYmtGySN280LVYA=;
        b=hfwjZ1LUEzJGen7JTbyI2ZkPXYWBHNVqKq0NshtNJyHVhbetL/yNXau6wRNlf/ofzP
         0llcJl9IzmJQBAQVfei5yxwTTGlyhHlQvIbgoKDM/O60VGvvbNHgvZMgz0Z0uTYUhNF0
         Mmt0Ly2VW+DoAi5QLQm4hfA/JORJaphb+LjSgaBYO5/3ZACNiTE15oqmn+m2xoVlbjj8
         CbPMxjGj6dNrfotF2yE3+BWEPmJk48hNZ33pmhT7RajCgol5j6WcDBvC1GGrmx3IjwSk
         P+h4b5XmaVeK4cEWRlyMsldQxu2w0i2RjHKe9EMeFn3aecD2tsi521F4aGi6717v34xX
         kB5A==
X-Gm-Message-State: ABy/qLZGKVLUG3dS1v9wLBE8HtLq7rVNY8qDKiVzow6exAun4EfHEr2C
        GgxfCOv0xhcJ5zo7PG8c/XiUBg==
X-Google-Smtp-Source: APBJJlHyu0ZdUfERdZTcmLDCFe6uMIH8vlXK0AkpnqRdvQDO9/0pgBEea8fGLr7upmYgXFYpUJan0w==
X-Received: by 2002:a05:6512:541:b0:4f9:cd02:4aec with SMTP id h1-20020a056512054100b004f9cd024aecmr3193605lfl.29.1690790662294;
        Mon, 31 Jul 2023 01:04:22 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id j10-20020a50ed0a000000b0051e0cb4692esm5055728eds.17.2023.07.31.01.04.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jul 2023 01:04:21 -0700 (PDT)
Message-ID: <1319b6db-6e38-8e46-a56c-9783afebc5b0@linaro.org>
Date:   Mon, 31 Jul 2023 10:04:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v4 6/6] soc: qcom: socinfo: add SM4450 ID
Content-Language: en-US
To:     Tengfei Fan <quic_tengfan@quicinc.com>, andersson@kernel.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
        kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230731080043.38552-1-quic_tengfan@quicinc.com>
 <20230731080043.38552-7-quic_tengfan@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230731080043.38552-7-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/07/2023 10:00, Tengfei Fan wrote:
> Add the ID for the Qualcomm SM4450 SoC.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

