Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F02341B307
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 17:36:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241586AbhI1Phi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 11:37:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241080AbhI1Phh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 11:37:37 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4822FC06161C
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 08:35:58 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id j11-20020a9d190b000000b00546fac94456so29447146ota.6
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 08:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Swdg435aFYXKutncMJ2uDQgpoMMpMIxDo9eC2m9kWLo=;
        b=Ixzn2+iHFGzsLTGXmk9RgcSKPH76xHeoiBgPdEHR8tbzEke8JE+Lv7AF5yhq//gR6U
         rDFSbrpvvaQwIiymq/fwxXBu532kErm9j2eUlsl3K9WrhrkA5gjVVoYmkuLIKEb8pQ3M
         6R+lNUC8DyXsuvlIBR5d7XAC/SSrpKr6q3Qfjhg+uu9rUWWAy9iO7n7PTJnmljiPsFWA
         VAXN15aSKTRqQgzqcKYOK1p6x8s5NrvOx0c2byOJjqvksOeIFPayYhbnFSpDHd+eZqqu
         F1kXWAC8qnfXxOwhhy/8ZORIL1KpApvjY85L/bLkbIEglLK17lI1HB99SmLvc4x5egj2
         h5OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Swdg435aFYXKutncMJ2uDQgpoMMpMIxDo9eC2m9kWLo=;
        b=tUk5KJfyJ22NryMcfm8jlTWU3aEDpNf2l99GBViQJwE+3HdnkoEaY7+B+UwBrOhDRH
         zBgS5ddUWvP2efWGepBfOa/eXPQhzfZertHTaGxwgOIvBEARZrzAjS8Bos3mywHaLX6x
         BQSnWjtWBNpzBrXOqsYWlfaUwzuO6fDc3+0Z/Ztp5VhPm6Mcj38BqUaE3NOPLxPV9Ku8
         Ns1+Pv38crC2aXTaCJSF7GCUowuabn26I2z8Zf8wFIdYnZMMBH3YLtsQp4wjjXaVwNBi
         cbvvJDe7NgqzgnCpBR91ZBTEsqA2VtoCnRFYAuU4Ry9OspoLSIwbYj/TdmndhW9+sYMI
         NeLg==
X-Gm-Message-State: AOAM531XRj3US4KtBwlHkLjykQbW0cq8g09PxWomoecoikZTytuUjuqY
        46yPr+9XeBjqgl3jxx7Pc8j6cQ==
X-Google-Smtp-Source: ABdhPJwrXenx8W8F32BC40cDXvKGXOIOYJvI7bmwFlysaoGUm335yzGIjxiKP8o+jmi4wCE1985IxA==
X-Received: by 2002:a9d:6396:: with SMTP id w22mr5828089otk.26.1632843357557;
        Tue, 28 Sep 2021 08:35:57 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id l19sm2897066ota.17.2021.09.28.08.35.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 08:35:56 -0700 (PDT)
Date:   Tue, 28 Sep 2021 10:35:55 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Shawn Guo <shawn.guo@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: c630: Move panel to aux-bus
Message-ID: <YVM2WwFZxv5Rm+Dw@builder.lan>
References: <20210924025255.853906-1-bjorn.andersson@linaro.org>
 <20210926060749.GB9901@dragon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210926060749.GB9901@dragon>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun 26 Sep 01:07 CDT 2021, Shawn Guo wrote:

> On Thu, Sep 23, 2021 at 09:52:55PM -0500, Bjorn Andersson wrote:
> > With the newly introduced aux-bus under the TI SN65DSI86 the panel
> > node should be described as a child instead of a standalone node, move
> > it there.
> > 
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> >  .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 27 +++++++++----------
> >  1 file changed, 13 insertions(+), 14 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> > index bd22352b6c7a..4818ca6d820d 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> > +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> > @@ -56,20 +56,6 @@ mode {
> >  		};
> >  	};
> >  
> > -	panel {
> > -		compatible = "boe,nv133fhm-n61";
> > -		no-hpd;
> > -		backlight = <&backlight>;
> 
> There is some prerequisite change for this patch?  I do not find this
> backlight node on v5.15-rc, neither linux-next.
> 

Seems I had this and the backlight addition patch in the wrong order in
my local tree. Let's see if we can land the backlight support and then
I'll repost this.

Thanks,
Bjorn

> Shawn
> 
> > -
> > -		ports {
> > -			port {
> > -				panel_in_edp: endpoint {
> > -					remote-endpoint = <&sn65dsi86_out>;
> > -				};
> > -			};
> > -		};
> > -	};
> > -
> >  	/* Reserved memory changes for IPA */
> >  	reserved-memory {
> >  		wlan_msa_mem: memory@8c400000 {
> > @@ -441,6 +427,19 @@ sn65dsi86_out: endpoint {
> >  				};
> >  			};
> >  		};
> > +
> > +		aux-bus {
> > +			panel: panel {
> > +				compatible = "boe,nv133fhm-n61";
> > +				backlight = <&backlight>;
> > +
> > +				port {
> > +					panel_in_edp: endpoint {
> > +						remote-endpoint = <&sn65dsi86_out>;
> > +					};
> > +				};
> > +			};
> > +		};
> >  	};
> >  };
> >  
> > -- 
> > 2.32.0
> > 
