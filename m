Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5ED055B908A
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 00:44:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbiINWoY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 18:44:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbiINWoX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 18:44:23 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41B777FE6A
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 15:44:22 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id j6-20020a17090a694600b00200bba67dadso15765696pjm.5
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 15:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=sG4BoPjz3e0C1eNVOCbe3XTFIwC27NVv9II1vqkhBzU=;
        b=egbvshYQ7PhrCmmQJ075kMdOFDDe3HbCrbPAzU4N7wm3xIVLSn3FY2NwJllG+vOH2Y
         cfsytFveVVA76ltMYro/rPbqsT5qasiJrLGV06HXsjPbVlCelxfgW+1TeQRgLDieYUs/
         fSIHFafGEDMeum17aLYPRphQAQbAyOw5sFwWk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=sG4BoPjz3e0C1eNVOCbe3XTFIwC27NVv9II1vqkhBzU=;
        b=k0GHzFZCcnUrldmXKpdO0kv8d287rRfZCjGTfa5DJlsEvbxwPmManSAz6HWoytzZ+d
         BholWROYYj7DAzwCkWxY5zloUWSFPa3Y7DODxKz02DLGyltMOyzGC/WkSs/UEJF/IziH
         3L4Z9ze4gGxxr+5TtRS3GGuyDQoomLPjB3jDMn0Q9JqsB/kEqFesei0bDTyuTpZWqOzr
         KCdvAuVMhnlGuL1lFgxwKLQG+UgDELwsEM0xEJCcAu5d1x0CNRjjQNgVD8b+19fHNWzK
         YRHatJuMKcLfcSjWSHURdpHSv9X0TcqfNR7L70iHvjSkKy7kzZhv0MRI7Rlm+Xvpl5L2
         +CXw==
X-Gm-Message-State: ACgBeo3aHobFhFuoFPSJwqbVBXQ85KReTlaMnn3+R0dLb2igRtDFYuyx
        ZfMAcOEadxSKOotuzoTSTFxU8K1GkM1ozw==
X-Google-Smtp-Source: AA6agR6BJK39kIszlvDaPT1D98yFN2nfwJm8G/GuZYjFwhHiuy8VicYOPBae1seWlmxlUZK/eZORTQ==
X-Received: by 2002:a17:90a:d804:b0:202:f247:91b0 with SMTP id a4-20020a17090ad80400b00202f24791b0mr7319391pjv.8.1663195461789;
        Wed, 14 Sep 2022 15:44:21 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:c963:b4c8:c1a:85f6])
        by smtp.gmail.com with ESMTPSA id x1-20020a170902ec8100b0017854cee6ebsm2981009plg.72.2022.09.14.15.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 15:44:21 -0700 (PDT)
Date:   Wed, 14 Sep 2022 15:44:18 -0700
From:   Brian Norris <briannorris@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add gru-scarlet sku{2,4}
 variants
Message-ID: <YyJZQuw5aQKbW9K/@google.com>
References: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 17, 2022 at 12:33:55PM -0700, Brian Norris wrote:
> The Gru-Scarlet family includes a variety of SKU identifiers, using
> parts of a 3-bit space {0..7}. SKU2 and SKU4 devices (under a few
> different manufacturer names) also use the Innolux display.
> 
> For reference, the original vendor tree source:
> 
> CHROMIUM: arm64: dts: rockchip: add sku{0,2,4} compatibility
> https://chromium.googlesource.com/chromiumos/third_party/kernel/+/f6ed665c9e2eb37fb2680debbb36ec9fb0e8fb97
> 
> CHROMIUM: arm64: dts: rockchip: scarlet: add SKU0 device tree
> https://chromium.googlesource.com/chromiumos/third_party/kernel/+/9987c8776f4b087d135d761e59f7fa6cc83fc7fc
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Ping. What's happening with this? I got one non-actionable comment (that
I replied to), but I can't tell if this is just waiting on Heiko to pick
it up, or if it needs a DT reviewer.

Brian
