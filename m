Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 469736D7BD2
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 13:45:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237985AbjDELpb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 07:45:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237933AbjDELp1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 07:45:27 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A19385B87
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 04:45:04 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id eh3so140270888edb.11
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 04:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680695102;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HdOj0OMeU7Kbl8/Cm9oHj9tDRqlIG6IbeRXc2cStlMw=;
        b=NKmDsnNLZ3F0old3NSU1c7NOt0hVPF2Toy47D2sRrnopr1pKfLLPb2ypDdJq0GJ1Uf
         +wsAVy5NM8X52W2XPFzfZ7Mc9rq/Yu5El40Qyb7zix+r6/h+eFsUEXxT6YpfUjaWsG5s
         qbtQljxsxQiF++LKdxKl7Pk+k6eIyirMeQCPqExOMOXA9yMVdIl+JctOH7vl/fDpp7uj
         zCkTVrotcsdMN18M50p1Kl0Rqc015RQAfUgPf5uHOTIwZ8AZ6YqK8O2Z3JJPP2cdLrkw
         feuBEeM+KR5u8z8FN/+iJ1jUZquOE3frD42EPmgTLFtml7aVpcHrEp/2V+xWH8AlQjzn
         gp/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680695102;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HdOj0OMeU7Kbl8/Cm9oHj9tDRqlIG6IbeRXc2cStlMw=;
        b=SWtTqgU8mpDYM4mjDsE5v9EWAC/+cxLcj4ve7EGZ2v3XuxdOKSgYZd1gD+pdit/t3H
         x7aP1J07KuwFAMpOvutFAcSHH9i6HA8I23cKooSJnuaEOTxcfvBlmgedCzqGuwgpV8yd
         FGWKsBhOLtj6UQ/PbW62QClgbAtod3NIOwUjOmamQoBy3aqtd2/D6AXkUxgOWrZRi857
         JCplGc0BAcJsthgXvLtyh3BlPehOxkr5YUy1lmoTY4D7aWiQtScu04uQlxnp78WUqDB0
         qTFWdGIED45+bn1W2ltAOXmL7ipFB4/34IkUF00NmeHLXEVmX8gYd8eD1CNNXyuTBfBa
         1UVw==
X-Gm-Message-State: AAQBX9fJ3V+BNBH5FviA/bp4KJg1fC6q44tTZOckU+aAeR+jEcwdZD5Z
        0w0M7bHyoGrRBNo+TxfgUTUoPQ==
X-Google-Smtp-Source: AKy350bRu+tmVuaScuqf8Ece0qNIue1RIxkN5PZaZQ2LzbqpKMd50l/+nnydW76AKtuw9oEKpqZB4A==
X-Received: by 2002:a17:906:85ca:b0:933:dfca:1716 with SMTP id i10-20020a17090685ca00b00933dfca1716mr2736541ejy.26.1680695102703;
        Wed, 05 Apr 2023 04:45:02 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3f:6b2:54cd:498e? ([2a02:810d:15c0:828:3f:6b2:54cd:498e])
        by smtp.gmail.com with ESMTPSA id um4-20020a170906cf8400b00928e0ea53e5sm7239617ejb.84.2023.04.05.04.45.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Apr 2023 04:45:02 -0700 (PDT)
Message-ID: <8fc3dd22-79df-32cb-c219-896eda8fa986@linaro.org>
Date:   Wed, 5 Apr 2023 13:45:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 10/10] memory: mtk-smi: mt8365: Add SMI Support
Content-Language: en-US
To:     Alexandre Mergnat <amergnat@baylibre.com>
Cc:     Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230207-iommu-support-v2-0-60d5fa00e4e5@baylibre.com>
 <20230207-iommu-support-v2-10-60d5fa00e4e5@baylibre.com>
 <9847bc48-c96c-3599-e876-bcf9ebf1522e@linaro.org>
 <CAFGrd9pBdaHLGUZHkaz2_XKafyX=dxu9UckQxrphg52EG=A1SQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAFGrd9pBdaHLGUZHkaz2_XKafyX=dxu9UckQxrphg52EG=A1SQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/04/2023 11:53, Alexandre Mergnat wrote:
> Ok, I will move the driver patch before the DTS patches in the next version.
> 

Or do not send it together at all, which might solve your dependency
problem. According to your cover letter I cannot take the memory
controller bits, so I am waiting for dependencies to hit the mainline.
Alternatively I will need pull request with stable tag.

Best regards,
Krzysztof

