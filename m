Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6DE5528854
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 17:17:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237458AbiEPPRJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 11:17:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244900AbiEPPRI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 11:17:08 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77BB83A198
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 08:17:07 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id z2so29343457ejj.3
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 08:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jP1Z/t75Zd6+QfO0rBYQNP9W66P0QAZBvkxPxWMCEHY=;
        b=HzgnGElJcy8Kom4TATLPw1DcUEH44GqfdZxPziBJAjMYplYbhEaAxZbm4LdHD3D4/v
         hkCwqG4CD/WoFFMnuLnuuTvOxmSjctrf5dh2+OCPOpqZhPPBBbBGPYP3ORxEm3A66gsg
         h/CPTcnbxFRmyXJ8IzwezD1foSwtGz2VR8OrM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jP1Z/t75Zd6+QfO0rBYQNP9W66P0QAZBvkxPxWMCEHY=;
        b=g+SXRfNGLV6atlsPLIihNGPTNCml58unwTbCEszmaVkeBJm2NsoducOOUeGjRIE58+
         qEmdO2aHu9Do256KUFjEiR+k3bgAVb9QUPYCrg9HhprxxlHx2A8iCCvo3GmJN8AK6ScW
         n26sQR5z91DdnrJ3A0x/tF3gOisvUzUO5MniX4o/wBkx+TYBINP811L4g3oPr91BUdFx
         kaGlsqoldBXFqa9EzWv8UXxy6Vs3xXBt7XeM8J9lgVxS82it8qlxv+hCHZHgSkTzNFYQ
         RXorrQoH42QLtmLP/bKLB0STRoXWH4+vOQJibbr1en511RTrUbUfwAITMO2yc2Q32f2z
         9pLQ==
X-Gm-Message-State: AOAM530JI22mXqNM9AhmcSnG22gJwCJ5T1JdC04l70hYLXhCK1z1bb3x
        uTsieaUqmem2+CGFFnUIGm4PhIglZNT/J9U0+lc=
X-Google-Smtp-Source: ABdhPJwYeDiFaEqZnRZr9hvsjrgOMSpkBOkdJFQ3NlKaikrrgK5zVILjU8xkqphUvNs+thOzzbLmKg==
X-Received: by 2002:a17:907:6e28:b0:6f4:6428:6ee8 with SMTP id sd40-20020a1709076e2800b006f464286ee8mr14979301ejc.608.1652714225796;
        Mon, 16 May 2022 08:17:05 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com. [209.85.221.50])
        by smtp.gmail.com with ESMTPSA id b3-20020a170906728300b006f50ceabcb8sm9353ejl.102.2022.05.16.08.17.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 May 2022 08:17:05 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id t6so21009536wra.4
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 08:17:04 -0700 (PDT)
X-Received: by 2002:a5d:6d09:0:b0:20c:53a9:cc30 with SMTP id
 e9-20020a5d6d09000000b0020c53a9cc30mr14313656wrq.513.1652714224237; Mon, 16
 May 2022 08:17:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220513095722.v2.1.I71e42c6174f1cec17da3024c9f73ba373263b9b6@changeid>
 <20220513095722.v2.4.Ie8713bc0377672ed8dd71189e66fc0b77226fb85@changeid> <125970b0-af71-1695-a3ab-10a159ac63a5@linaro.org>
In-Reply-To: <125970b0-af71-1695-a3ab-10a159ac63a5@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 16 May 2022 08:16:51 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XR+WwWmrB1wGX65=szBc2PbGNOHbm2tiQT5Wp8CPG0Kg@mail.gmail.com>
Message-ID: <CAD=FV=XR+WwWmrB1wGX65=szBc2PbGNOHbm2tiQT5Wp8CPG0Kg@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] dt-bindings: arm: qcom: Add more sc7180 Chromebook
 board bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Alexandru M Stan <amstan@chromium.org>,
        Julius Werner <jwerner@chromium.org>,
        "Joseph S . Barrera III" <joebar@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, May 16, 2022 at 12:05 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 13/05/2022 18:59, Douglas Anderson wrote:
> > This adds board bindings for boards that are downstream but not quite
> > upstream yet.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> > Changes in v2:
> > - Use a "description" instead of a comment for each item.
> > - Use the marketing name instead of the code name where possible.
>
> These should be published with the patch adding their upstream DTS/DTSI.
> There is no point to list all possible boards in the world from any
> downstream source. For upstream there is no particular benefit for such
> bindings, for downstream you also said there is no.

Joe has been working on upstreaming these boards:

https://lore.kernel.org/r/20220510154406.v5.1.Id769ddc5dbf570ccb511db96da59f97d08f75a9c@changeid/

I think there is little chance that they won't go upstream at this
point. However, we're at a time in the merge window where it will be
several weeks before anything can land. If Joe were to include this
patch as part of his series I suspect it would be much more confusing
because it would add an unnecessary dependency between my series and
his and make it harder for Bjorn to apply it later. Keeping the patch
with my series means that the series can be applied more easily.

How about: I'll add a link to his latest posting in my next version.
Then, in the future (after these bindings patches have landed) then
future boards can go together with their bindings.

-DOug
