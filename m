Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5D1752E717
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 10:16:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343847AbiETIQM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 04:16:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346887AbiETIQH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 04:16:07 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ED543FBCE
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 01:16:04 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id j25so10395539wrc.9
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 01:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=sgVdkj+m0vdYfC42vgmnXcgErywSFim9EldJP/IRKb8=;
        b=UbCjQtGRYjLqlisKKVYQpJgMYj/br9KZw6pGqNIRnL84QxknHPwih4CK9F5I2S/7Ki
         IiOelDJRDtgCgP298udFAK1aWzVaCZ7RT4ZahHcBGmee5L74RImyWtVZcWbHwwmS31Vb
         KRCORvITE+zT6KppLMaGOMhi7pFikUYxpIb3NGlyYZ0qLcnYIJ2GAP6R1lpgYwgMX/LB
         7IHc+a+uWC+czjVbCL9a0shS9FDqRkGALziE0pfwdtD6S7qevDZOKUIRXJ9/Z+5O3bhU
         bak0XChjaPwOdMDWTkYPt7rKc16wH1TAgCSMNsAijtXjymRrf4RfcKq5SOzqu8iL3ZW/
         z1bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=sgVdkj+m0vdYfC42vgmnXcgErywSFim9EldJP/IRKb8=;
        b=6UKd7aTs5ZvoQ7Y9SaBpwpIMc4JfG977/HaJAEWJyiak6bOVVFQjf9vBAwjfSKV4jp
         YhyBxFwUtLA8wSX3iX0IRswb0DbL5Fl/nLLN1EKPSu9yGbyDQP8Bg8nhfpOHhBSSHWAH
         0srGFjcdCEUpqI/80qMUbC45WsKElLHZBZQr9FvyGWrIAV4au3rO7OZOgD/zGN5M6NqB
         ELxDUvePaxFNPfcKAO2158ecyLuzSOMgb1zF9H4GCDymsjwfatVcXVjOgcWjSD/c9JMo
         kbM4ShaHuZ6L+OCk3cZnIu+fFFScP3N/S/ltlHgA+a8jCWcJUj7j88SWgilKPES1Zsku
         88sA==
X-Gm-Message-State: AOAM533NMBQyqZVK2+bX4FFcEfquz6NEuGum2kkaNlBKSQ8TQzn8CxzU
        +zv1A+O1mtZvS1yAhhY+xSf2xQ==
X-Google-Smtp-Source: ABdhPJyJit3hnS/YjTniZmJ2kknMK6SoFyfAJ/HlzlsgZ7pfH0IL0m/0hSt8/6YePAJ85te1SjUyuQ==
X-Received: by 2002:a5d:598b:0:b0:20e:6288:8c6a with SMTP id n11-20020a5d598b000000b0020e62888c6amr7114554wri.531.1653034563061;
        Fri, 20 May 2022 01:16:03 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id l6-20020a05600c088600b00397335cf750sm1283305wmp.47.2022.05.20.01.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 01:16:02 -0700 (PDT)
Date:   Fri, 20 May 2022 10:15:55 +0200
From:   LABBE Corentin <clabbe@baylibre.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Mark Brown <broonie@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
        calvin.johnson@oss.nxp.com, davem@davemloft.net,
        edumazet@google.com, hkallweit1@gmail.com,
        jernej.skrabec@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        kuba@kernel.org, lgirdwood@gmail.com, linux@armlinux.org.uk,
        pabeni@redhat.com, robh+dt@kernel.org, samuel@sholland.org,
        wens@csie.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev, netdev@vger.kernel.org
Subject: Re: [PATCH v2 4/5] dt-bindings: net: Add documentation for optional
 regulators
Message-ID: <YodOO6PfsjelCa1x@Red>
References: <20220518200939.689308-1-clabbe@baylibre.com>
 <20220518200939.689308-5-clabbe@baylibre.com>
 <95f3f0a4-17e6-ec5f-6f2f-23a5a4993a44@linaro.org>
 <YoYqmAB3P7fNOSVG@sirena.org.uk>
 <c74b0524-60c6-c3af-e35f-13521ba2b02e@linaro.org>
 <YoYw2lKbgCiDXP0A@lunn.ch>
 <YoZm9eabWy/FNKu1@sirena.org.uk>
 <0518eef1-75a6-fbfe-96d8-bb1fc4e5178a@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0518eef1-75a6-fbfe-96d8-bb1fc4e5178a@linaro.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Fri, May 20, 2022 at 09:57:26AM +0200, Krzysztof Kozlowski a écrit :
> On 19/05/2022 17:49, Mark Brown wrote:
> > On Thu, May 19, 2022 at 01:58:18PM +0200, Andrew Lunn wrote:
> >> On Thu, May 19, 2022 at 01:33:21PM +0200, Krzysztof Kozlowski wrote:
> >>> On 19/05/2022 13:31, Mark Brown wrote:
> >>>> On Thu, May 19, 2022 at 11:55:28AM +0200, Krzysztof Kozlowski wrote:
> >>>>> On 18/05/2022 22:09, Corentin Labbe wrote:
> > 
> >>>>>> +  regulators:
> >>>>>> +    description:
> >>>>>> +       List of phandle to regulators needed for the PHY
> > 
> >>>>> I don't understand that... is your PHY defining the regulators or using
> >>>>> supplies? If it needs a regulator (as a supply), you need to document
> >>>>> supplies, using existing bindings.
> > 
> >>>> They're trying to have a generic driver which works with any random PHY
> >>>> so the binding has no idea what supplies it might need.
> > 
> >>> OK, that makes sense, but then question is why not using existing
> >>> naming, so "supplies" and "supply-names"?
> > 
> >> I'm not saying it is not possible, but in general, the names are not
> >> interesting. All that is needed is that they are all on, or
> >> potentially all off to save power on shutdown. We don't care how many
> >> there are, or what order they are enabled.
> > 
> > I think Krzysztof is referring to the name of the property rather than
> > the contents of the -names property there.
> 
> Yes, exactly. Existing pattern for single regulator supply is
> "xxx-supply", so why this uses a bit different pattern instead of
> something more consistent ("supplies" and "supply-names")?
> 

I agree that supplies and supply-names are better.
But in another answer Rob is against it, so if I understand well, we are stuck to use individual xxx-supply.
I will try to create a new regulator_get_bulk_all() which scan all properties matching xxx-supply
