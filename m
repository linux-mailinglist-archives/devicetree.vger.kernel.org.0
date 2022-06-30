Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 992FA560FCA
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 05:55:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231197AbiF3Dy6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 23:54:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230076AbiF3Dy5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 23:54:57 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 954B419C30
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 20:54:56 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-fe023ab520so24158571fac.10
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 20:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=5OWFEvvnhWbk5JUNHWESexfCKhPu41TnYPW0LjUtHpU=;
        b=pSsWDCAXql821vGLsIMyJgV0Pos3oBe0HeeKnRxTpl73Klu0EhWoM7Bxw6TV9XuMWk
         +8B7GcNu7hFRCdWVpcEZiJ94XFXRWchn7gt0794aJtPtxgVedoebvlKTu2byHKqHkBAD
         lH1KUTGy/UAe0clm2oCRmYiZ2BbZXC36X6piwT9n4YHLW/XeutzYAwYyMPFxS1CkHBil
         fYt0jqXjKYmo0HoWfoCqbZmgCw6KElamOJ+JCJ/qjw6akyrASip4f/yUpQPYg6gB3P4p
         3CAdiZfX8fcknSy7GVasRGsudhVFa7r3lxWQ8E76/8Ej997x660FAjSUBMqCeovZT4pR
         uvMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5OWFEvvnhWbk5JUNHWESexfCKhPu41TnYPW0LjUtHpU=;
        b=XK8EHC36rwcoUKHrleTxRfGnHduRvpmp5yz/su1QQCqgvcsh1UV51jKbCyScFRHnIh
         B3d3kw9oXEWC6lViFcRNhpZKmxPJPpswZSompSYPI9VIVFFigveUq14msjHHkfkSWn3c
         qFkvYr4gvy7t2V03ZCDTyStHHGtTK6zuPl+FAI+nopxd7Yo/7I4ns3bSKtmTwypqb0NW
         pOhZCeNsMVY6xIfprNgUgmUQ7TmnAaV4T3W2sArZnW88J81RDRyq85Pl46Ph4drFvcXA
         NV4ln9sxAT1sO2L/mykzSUxokzKMuO+e2QQPPv65hCB5Zwz4NcmVhx53Gsgqxa6hjgSV
         j/Dg==
X-Gm-Message-State: AJIora85VlSSH6553sDCzlWCb70jvTxSKxsCQPQ5lLr1SKh66zM5fQEA
        7cmPlkgIz8LUpvTKxOm4YJs4DA==
X-Google-Smtp-Source: AGRyM1uy7iCrWBTCWRBIvFIB7IlrUkZ+YNjXeLqJ/7yEta29DPxlz4F1dZj3TgnN/TGG2nqk7YCDGw==
X-Received: by 2002:a05:6870:6314:b0:10b:9595:62db with SMTP id s20-20020a056870631400b0010b959562dbmr2456208oao.128.1656561294787;
        Wed, 29 Jun 2022 20:54:54 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a2-20020a05680804c200b0032e3cca8561sm9662636oie.21.2022.06.29.20.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 20:54:54 -0700 (PDT)
Date:   Wed, 29 Jun 2022 22:54:52 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Pavel Machek <pavel@ucw.cz>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] arm64: dts: qcom: sdm845: Enable user LEDs on DB845c
Message-ID: <Yr0ejA2RdEOj2AIg@builder.lan>
References: <20220505022706.1692554-1-bjorn.andersson@linaro.org>
 <20220505022706.1692554-3-bjorn.andersson@linaro.org>
 <20220530070608.GB1363@bug>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220530070608.GB1363@bug>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 30 May 02:06 CDT 2022, Pavel Machek wrote:

> Hi!
> 
> > The DB845c has 4 "user LEDs", the last one is already supported as it's
> > just wired to a gpio. Now that the LPG binding is in place we can wire
> > up the other 3 LEDs as well.
> 
> 
> > +&pmi8998_lpg {
> > +	status = "okay";
> > +
> > +	qcom,power-source = <1>;
> > +
> > +	led@3 {
> > +		reg = <3>;
> > +		color = <LED_COLOR_ID_GREEN>;
> > +		function = LED_FUNCTION_HEARTBEAT;
> > +		function-enumerator = <3>;
> > +
> > +		linux,default-trigger = "heartbeat";
> > +		default-state = "on";
> > +	};
> > +
> > +	led@4 {
> > +		reg = <4>;
> > +		color = <LED_COLOR_ID_GREEN>;
> > +		function = LED_FUNCTION_INDICATOR;
> > +		function-enumerator = <2>;
> > +	};
> > +
> > +	led@5 {
> > +		reg = <5>;
> > +		color = <LED_COLOR_ID_GREEN>;
> > +		function = LED_FUNCTION_INDICATOR;
> > +		function-enumerator = <1>;
> > +	};
> 
> Do the LEDs have some kind of markings? Marking them as "indicator" is not too useful.
> 

Unfortunately no, there is just 4 green LEDs tightly packed together (3
driven by the lpg, 1 by a gpio), with no indications of which is which.

Regards,
Bjorn
