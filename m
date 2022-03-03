Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79D5C4CBA9D
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 10:47:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231889AbiCCJsf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 04:48:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229867AbiCCJsf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 04:48:35 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EC9E46667
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 01:47:49 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 7-20020a05600c228700b00385fd860f49so2029155wmf.0
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 01:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=DXo+IgL0LM2mIv0V+usm5FIq8JBJVx3EjOFti4nq+sM=;
        b=WMuJoP2p0GU28Ey+YY/qs/GsAuKhUqb9dDwzl3NM3JoXQjlFCODDalJ23AF35oFIRa
         7f7L6CR1L5D23IXkTRYLwMM0bFURVU+fMVg3ndYhWkVV46gYbLY4ZvlTVouQbwxipFbr
         5RO4SwjH1fqcRoTEhJ2Fdcnl1STyfV67IvzNNiGQHzXqpPNCQrLW0TAyH3YCyOKwFIGG
         Pr6kH6J+WvTOsVrEVQlvcBec3vybmuxnlY2A3UuIjJfJe3pB9jnq/+W3sl4VuU37gizI
         zOAVSB+FFFW4tcS4PM6y3JwgaiSiPYD23LNspQn2W9sNLDDUcwLEHMArXAL8ouN/Gix9
         UDQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=DXo+IgL0LM2mIv0V+usm5FIq8JBJVx3EjOFti4nq+sM=;
        b=mrgJxQzABTA9gPG/LY/Nutp7CTCIcoO60tapOJY8UAxPpgoO8Z+WYZOeIbnxR6nZg3
         sbEW5Yfz7F3dG5AcEqHW+aRgF0cArPDzgjWxDDBZREGnzQfghMiC+hIqgYSzAfOBNR21
         /864c78Qyru7uKLLGCNj5lGctGPXkiFJuy95w89+qiGnKocUZnTyPED74p8OH/ZMzqWi
         IoZFp5anvSG8s/eJyt1zHtWEHVn5JjXYgg2a8x49v+dIC3/9z0laTrmqVCs1nZszdwQF
         E/MSZP4F3/07LXHX1pBwgT9hYB1UVN5JxNrXJ8iVzU7OnEkDe7GOECZRqVY6xEB/1o6X
         UgHw==
X-Gm-Message-State: AOAM532MDgSLEqMdjT3xOqAn/CcXQuK/MUv+yEjXRdq9eJ5rhAElJu8E
        Xb1I1ViuIVs8XjGVVPVeXKRuepOUqhxyAg==
X-Google-Smtp-Source: ABdhPJzt1uMNjD5Cj3J7fsUc+/Ygz0eTbDkFYjwl+IVSKmYH0iYag6LHp0uniSYaoeQXObYIqzJcNg==
X-Received: by 2002:a05:600c:511d:b0:380:e340:bfaf with SMTP id o29-20020a05600c511d00b00380e340bfafmr3057547wms.159.1646300868014;
        Thu, 03 Mar 2022 01:47:48 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id f8-20020a05600c4e8800b00380ee4a78fdsm2001448wmq.4.2022.03.03.01.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 01:47:47 -0800 (PST)
Date:   Thu, 3 Mar 2022 09:47:45 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Javier Martinez Canillas <javier@dowhile0.org>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/2] regulator/mfd: dt-bindings: maxim,max77802:
 convert to dtschema
Message-ID: <YiCOwe4ykuvx/mRO@google.com>
References: <20220215075344.31421-1-krzysztof.kozlowski@canonical.com>
 <a401939d-ba65-4614-baa2-047914f55206@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a401939d-ba65-4614-baa2-047914f55206@canonical.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 02 Mar 2022, Krzysztof Kozlowski wrote:

> On 15/02/2022 08:53, Krzysztof Kozlowski wrote:
> > Hi,
> > 
> 
> Hi Lee,
> 
> This set also looks like it is clear to go.

Yes, they're all on-the-list.

I'll probably take them all into one branch and send out a PR.

Making 24 separate immutable branches is beyond my pay scale!

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
