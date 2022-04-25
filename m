Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED47A50E798
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 19:57:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244132AbiDYR7j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 13:59:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238096AbiDYR7i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 13:59:38 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 974A218E07
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 10:56:33 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id p4so3776596edx.0
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 10:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=sT4j0q1vLr51aWTToi5FZXFo29u90yrMt1lgbnaE55U=;
        b=VWYndqMka37ODd2Z+6EPDLCWFHOh+JBfXGMFv0tlmI6I0zURWmSUV+QYGeS1GVLsIC
         izqG0XxFk0GtMaCvttsEpE0rlz4Qn/HaKfK33nKczyAXsJXgmk95IxVpfmTrGLPOmxj2
         AWiwFLmg75m7AcO+d4i4sPaN0IY7/88fHy0K64UsruSVUTCloYYczRjHpIq1x1M7WiHY
         catwC1DV4jZVQJlNy0SNhecw9o5xLXoZb+n5LwSR74DMUUTTdMNDp2CS2yxT17vMv46R
         REoMrmy7HCVRo9BLjfh48syWXkpce6BSCiDGF44CQ+9a2pUrDn69OZdsS8q2lrEbALKt
         qYUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sT4j0q1vLr51aWTToi5FZXFo29u90yrMt1lgbnaE55U=;
        b=biu96cJLa6lh48u6rxekLpEi+5eW20hgiSPXahKM/bXqzewLTe5l16EPc8Z3VH3Mrk
         99NcqeQHFRiLX1jspHteZWRRHZybNV4F5JDVEk9ZqIESnrvIxrNdzXbj6lyNSyqleW5j
         qk9EuQ2ZhGIGBGeOTyUYPT6xImn2/+EgxpldwEO9SlusHrEr3HOPmsySy7uRtZsY7SEI
         DM7R0muqblwBT1XSuHYe7F5+hTXDtvLkXozTRceCxdTLwPMyMIlytj+cnc1DDr4t6nKZ
         c9bMz//XKfkt2hTd3vcUVhaw83fPYjMgAn+vAn/Hwwcg2Z6Gqsql7o6s3WEJKuik/jjb
         lZRA==
X-Gm-Message-State: AOAM532+rNr5aMmlub5ivcOIftRQdhSY7QbKPWqA2YJxhkADf5vZ6YIp
        0Ydl3Je89ALAEqAIh7FN157Qmg==
X-Google-Smtp-Source: ABdhPJy7J6uxmFaswWnX4MmStBpfUrGJh+eXMijIPGJs+cFqkbxi6OumPEYZxX7uD3Q+fEDHdhvCfw==
X-Received: by 2002:aa7:de0c:0:b0:425:d510:8f40 with SMTP id h12-20020aa7de0c000000b00425d5108f40mr12290047edv.4.1650909392260;
        Mon, 25 Apr 2022 10:56:32 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id j8-20020a170906410800b006f39ffef37fsm800442ejk.205.2022.04.25.10.56.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 10:56:31 -0700 (PDT)
Message-ID: <9eddb317-e835-04a1-0875-995c6648acc1@linaro.org>
Date:   Mon, 25 Apr 2022 19:56:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 1/2] dt-bindings: interconnect: Add MediaTek CCI
 dt-bindings
Content-Language: en-US
To:     Johnson Wang <johnson.wang@mediatek.com>, cw00.choi@samsung.com,
        krzk+dt@kernel.org, robh+dt@kernel.org, kyungmin.park@samsung.com
Cc:     khilman@kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, jia-wei.chang@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220425125546.4129-1-johnson.wang@mediatek.com>
 <20220425125546.4129-2-johnson.wang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425125546.4129-2-johnson.wang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 14:55, Johnson Wang wrote:
> Add devicetree binding of MediaTek CCI on MT8183 and MT8186.
> 
> Signed-off-by: Johnson Wang <johnson.wang@mediatek.com>
> Signed-off-by: Jia-Wei Chang <jia-wei.chang@mediatek.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
