Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C6BC62D73F
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 10:41:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239560AbiKQJlr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 04:41:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239157AbiKQJlq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 04:41:46 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2012F6BDE5
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 01:41:45 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id w14so2806039wru.8
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 01:41:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8z0Wfb7P39Ls6o1vTikP3kDg0DD2pl2/X+Xcf/GgiJU=;
        b=c+basX9NY41jv1dSEHigx/BW6vD0S+PKcEFQ2pj1V0Dxtb3XexdVdMoDfNv0Bd4VJx
         w2FqYQHl/0y3EFXMXSUIXrSyssterfSrWD1LxA73nSngoBpDRkqRGVSuLHcg6EcCBWHO
         RHaB7iH7kSAwiTuLhaHK/admu4qQSV8695yvGknK5ZdogqpoAtgw3fNkSEf0PKlvdDux
         LlPlqy7yKJVXK+UcI/3q9iga15Ybd0Y9hQHvLSDNyn/JG97F/GImlrJmtj+NgdgYp23m
         UjKPV01g09J8yAATFrQ0RwkA5zQJT8Z1ZfS7KoScWgSLtB8zPnfU9MVWnhi6khLUOdz4
         vScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8z0Wfb7P39Ls6o1vTikP3kDg0DD2pl2/X+Xcf/GgiJU=;
        b=A47xjz1R92jZ+V/f0ZJ9KKQy6HKVnDjzECt6oA9lPhEAAmdOUqmFRgm3sI0JNQtw4m
         pS7yYyLxwWtHI5UjKYFXChp7hgYroyn6CHG+d+cpI6s4wtKqPeZczT8PrXJ7Ewq3Yucj
         NN6UF2NyUVbj4r2HPNNpZ5tn4KAUDsNSAj58jVzXMlpD3yGtwg/9cD2hYQJF0TEvEvok
         /OuklN0LHdZCezocMEshQBCQ27nGsd8OJQGTQztkEx4F+8YGotSq6nexeIwBFu+SQJiQ
         f09mxIvciUccjIEhVKltpuFY+ze3gm5Sng+sq/7uLk2OB+mwKgjxi8zFRKR1EAEE2yUb
         C7vA==
X-Gm-Message-State: ANoB5pkfSjl0/ro+pwtlJWPVqSlY6nquj7/0W9anOHh1BjBmXBzxXnmj
        N0ymMMrmYWJU04dbsegM55ImXg==
X-Google-Smtp-Source: AA0mqf6CuNZhBuhvnP64ry7QS+cy16fi61uR4BfpfVfLS/RRau/bWAzMmA/kuVRQrX+IpAXgpdWCnA==
X-Received: by 2002:adf:f7c8:0:b0:236:720a:e391 with SMTP id a8-20020adff7c8000000b00236720ae391mr910882wrq.368.1668678103704;
        Thu, 17 Nov 2022 01:41:43 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id p15-20020a05600c468f00b003cfd10a33afsm5063153wmo.11.2022.11.17.01.41.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Nov 2022 01:41:43 -0800 (PST)
Date:   Thu, 17 Nov 2022 11:41:41 +0200
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mike Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
Subject: Re: [PATCH 5/9] dt-bindings: clock: Add RPMHCC bindings for SM8550
Message-ID: <Y3YB1Ulrpkw/Yxmi@linaro.org>
References: <20221116104716.2583320-1-abel.vesa@linaro.org>
 <20221116104716.2583320-6-abel.vesa@linaro.org>
 <5897972f-9851-8ac5-6856-464f00e845ff@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5897972f-9851-8ac5-6856-464f00e845ff@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-11-17 10:09:32, Krzysztof Kozlowski wrote:
> On 16/11/2022 11:47, Abel Vesa wrote:
> > Add bindings and update documentation for clock rpmh driver on SM8550.
> 
> Subject: drop second, redundant "bindings".

Will do.

> 
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> 
> 
> With above:
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 

Thanks,
Abel

> Best regards,
> Krzysztof
> 
