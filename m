Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D01985ED5CE
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 09:18:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233313AbiI1HSD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 03:18:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233448AbiI1HSA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 03:18:00 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FA2C85FBA
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 00:17:58 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id g1so1405980lfu.12
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 00:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=StpIC4/e1JN7d3InC2qG/A1cXpysuuFt3bky+8uNlkk=;
        b=auBq3UZrd6BPnYIsMp59lRmrSeWKXPM6mD/QZV5eCE9J/K9GRYk0J7acHj5+Qh41Ns
         k+NYMF8zDEbmUDBHQ4FBpm2arQIAyK946ao9/8SBOf72jziAAD+1sIs9IeqBSbTZ8s1z
         w4nT1mcea+XkXF+YJuV17a4mN274DO8AsZnCqD8NokynyAq4xypUaT5bJgsvZfGUNcqV
         M6jPwR7CT+vxW0kThhft/3Jwzz8KWcqWms/lKX6QwRI0EZQdkIbjZXo4ANxS6jnHOCFu
         sUlCXqfIN4/Ve9xcPt+uEuzwhxg+mGkz9BZJ/9z2A+QWCH9ia03HFR4oqQcHB78Kw5Ej
         TMtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=StpIC4/e1JN7d3InC2qG/A1cXpysuuFt3bky+8uNlkk=;
        b=NbJFWMGp2wSqXJ3naTFWgN0lTIk9mpRaCpKIbsG7rZbBQ7a6MLBpQpr5WT0dA0U6KE
         O+EJl9dTdOVNodb3rXuwgCPwCfT6esContYxSver+3GVNf48i4Aq9CFbd1PkwmMx3Jnb
         am19jNwxLlReODr29ii1cyWlRHlDAE+IyJ14yFanjsO4wU11T1L9N9cZlAU/+U4BifAf
         0M6lFORCacF61PwlurphxeVydvlPmU/ijLQcu/woTDaQ9aRVGGtnh4QbdFEy/Inm2Kps
         QTLtydvrki0Do6ou71ekX1jVUSwIy+gu1VNT/oW2BKgfMO7yPZQetjMbaDUJnGFsxWss
         KK2w==
X-Gm-Message-State: ACrzQf0lp4bJwiCIOeE+5I66YnrynE5cK1ERkewyP2mhEBJPZjGK+uRs
        CgQN7Z0ykThEnHXFmkiHhcuMmY/FkhuTBQ==
X-Google-Smtp-Source: AMsMyM7TcdH9EeXzJd6F5AvHk+PaJxshmDq7BvxSsxjn32xosY24OttOLzfAUHs9wY8DWr2k/wKPVw==
X-Received: by 2002:a05:6512:3052:b0:49e:fcb2:c1e9 with SMTP id b18-20020a056512305200b0049efcb2c1e9mr11801674lfb.260.1664349476908;
        Wed, 28 Sep 2022 00:17:56 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id r1-20020ac25a41000000b004974da17c2bsm399358lfn.0.2022.09.28.00.17.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 00:17:56 -0700 (PDT)
Message-ID: <4498db5c-d2d7-2e99-9184-ce195f7c7fc8@linaro.org>
Date:   Wed, 28 Sep 2022 09:17:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH net-next v3 1/6] dt-bindings: net: tsnep: Allow
 dma-coherent
Content-Language: en-US
To:     Gerhard Engleder <gerhard@engleder-embedded.com>,
        netdev@vger.kernel.org
Cc:     davem@davemloft.net, kuba@kernel.org, edumazet@google.com,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <20220923202911.119729-1-gerhard@engleder-embedded.com>
 <20220923202911.119729-2-gerhard@engleder-embedded.com>
 <6e814bf8-7033-2f5d-9124-feaa6593a129@linaro.org>
 <773e8425-58ff-1f17-f0eb-2041f3114105@engleder-embedded.com>
 <7c7f67d3-d42e-a053-256d-706cc9dfb947@linaro.org>
 <7782924b-9664-6946-f8f6-c70cec618df9@engleder-embedded.com>
 <6e43fd39-3452-c36d-d9ff-fd508ac337c9@linaro.org>
 <12c95c44-a2ab-3ae6-23fa-24a251c4a1d7@engleder-embedded.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <12c95c44-a2ab-3ae6-23fa-24a251c4a1d7@engleder-embedded.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/09/2022 19:46, Gerhard Engleder wrote:
>> That would be okay, but please add answer to why you are making this change.
> 
> I already prepared it:
> 
> Within SoCs like ZynqMP, FPGA logic can be connected to different kinds
> of AXI master ports. Also cache coherent AXI master ports are available.
> The property "dma-coherent" is used to signal that DMA is cache
> coherent.
> Add "dma-coherent" property to allow the configuration of cache coherent
> DMA.
> 

Sounds good, thanks.

Best regards,
Krzysztof

