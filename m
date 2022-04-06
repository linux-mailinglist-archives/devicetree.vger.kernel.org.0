Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 271304F664C
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:07:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238513AbiDFRGv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:06:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238402AbiDFRGm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:06:42 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78A1037DEA8
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 07:46:07 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id dr20so4734810ejc.6
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 07:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=xDSVxXfePuzg5H9akSGpqrt3EQAyFHRkATzzbCmNu4Q=;
        b=oc7fYa5LKG8ufWeEnZcEwfzJ5lpIHj9hFl2tWq7M6SBzlHKjff+4zqdYGau4afQ26F
         VJFIPUlzbtvqtStHIl7vAupTJduZuMrIsJj5WFVX4t80pT+CgEQTb4aFQB4K0LZQK+oT
         AQ4TlPPJLxK6pu+alTOr5MjlbijZ3I9iNnIEibjRn8AF9McXK56gvy6w4igQZbA7SlKN
         WQGYLfPg2A9mHkoqM/+Mg770Lid0eOx9+FqqS2uTdj1D1np0eBXZ4RZnxHuQMLlBt+v+
         Zp2doRxa3UpevU/5tcKXAvy0PamPFu6QEyUhrfRlC5l4/RwCKGfFiHr/9/pIs9/+WxTD
         9QAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xDSVxXfePuzg5H9akSGpqrt3EQAyFHRkATzzbCmNu4Q=;
        b=qOVjE3747H59YrxMehpUC/vYUbkw1Ea9BVloMsd31A2CQ9TYjEnqDspl/0TR5crJ+B
         XkQreEXwHAeOTMtjbLjk/0hZ0H8hz/81HZjlDxUHB7MuEdaEFFF+Mi7zciAxVp0vSMWT
         VhWIyJ+uyCV+VE7C61vT7qDQag6iXUeJj/qh/AEDwerKbGvzqniOJVzPl7E1yJ+Z8ylG
         ShdXVsmVbFd2f8oZkmBrG6VbetPkMepYGMvODTJBo45YESkSbKoqfKo6KiRQajgIg/pU
         n6cEjnuLcflmjL05qReyWEGd8HrfMR1KSyyEBRv7YvXS6595dKM9dHF6eHaA3MIPMBWj
         Hfbg==
X-Gm-Message-State: AOAM532/5WupZpDGQ8qDGcfQUlu2z2vuufCU6ud5iKtTEejvKlbxRpJV
        ruTr2kYWOXRiqAXtLwgx2puteQ==
X-Google-Smtp-Source: ABdhPJw4gXYqy583VI6CGvVJfLyOfsByKyXlBbza+dyYyC5ApRWjpBZCtEODLtt59+/ES2G6ddhfaQ==
X-Received: by 2002:a17:906:7945:b0:6e0:19:5f7c with SMTP id l5-20020a170906794500b006e000195f7cmr8956964ejo.458.1649256366005;
        Wed, 06 Apr 2022 07:46:06 -0700 (PDT)
Received: from [192.168.0.185] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id lb4-20020a170907784400b006e0d13f65e5sm6606684ejc.167.2022.04.06.07.46.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Apr 2022 07:46:05 -0700 (PDT)
Message-ID: <e7face88-5069-c560-ad2b-a0a658fb8cef@linaro.org>
Date:   Wed, 6 Apr 2022 16:46:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 3/3] dt-bindings: display: mediatek: Correct disp_aal
 binding for MT8192
Content-Language: en-US
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>, chunkuang.hu@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     matthias.bgg@gmail.com, p.zabel@pengutronix.de, airlied@linux.ie,
        yongqiang.niu@mediatek.com, jason-jh.lin@mediatek.com,
        nancy.lin@mediatek.com, allen-kh.cheng@mediatek.com,
        dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220406094654.29722-1-rex-bc.chen@mediatek.com>
 <20220406094654.29722-4-rex-bc.chen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220406094654.29722-4-rex-bc.chen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2022 11:46, Rex-BC Chen wrote:
> The driver data for MT8192 is the same with MT8183. Therefore, we
> correct it.

Driver data is Linux implementation specific so does not really matter
for bindings. Probably you want to say here that devices are fully
compatible? If so, please rephrase it. Also remove the wording "correct
it" in subject and here because there is no mistake here (at least you
did not describe it) and otherwise AUTOSEL might pick it up...

Best regards,
Krzysztof
