Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1044048E02E
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 23:19:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237327AbiAMWTD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 17:19:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237294AbiAMWTC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jan 2022 17:19:02 -0500
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF737C061574
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 14:19:02 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id r16-20020a17090a0ad000b001b276aa3aabso20293588pje.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 14:19:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=VNoaIqYSS5igvnCs4kwaW4XfycxM13KnkSzCOBOjnmE=;
        b=Nuhs5dd0c7HhXpYf6DA5mML5D2RQBfiweW8QrI7E8hh8C6YP//PjwMZYygAErMdz39
         qW23KauwPGQ42r6TOe5hNfTw2XJs6OSdFjm3/dr/Xgy+CVxnIctH2oL62AeQjKdQU4Vi
         vI/XaChlGNla8cPWzyWpMw5u6CaXOFrrGWs00d5Ly0hx8+KkDLlZpUvaf/3gpdv8B0yh
         e013bXI7SOoaHBi+CoiRhn+Fk7KDwd/eb5QzjpOBMwhfjSq9sG8q2vCnun/1SROmqCLV
         D2qn121pqUn0WEMFDRJhNuH0dy7IMeBHbq2I0Sxms0EY4zwipLHDbCb0OicgORPaGaGm
         tssw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=VNoaIqYSS5igvnCs4kwaW4XfycxM13KnkSzCOBOjnmE=;
        b=s1O/TM9S322ZqeZEgxQKlIavNPHqbJZbHRT5htXHukkcz7i6LLk1G/U4bWX5BFqfRe
         gL0YUao4wF06Tj/Em6R4CTPmpaQuT8pjeSSYuKwG5XZ8APQJBRGQuO8nehLY+qKWVmDp
         xfln9FZPLu0Mu6ugumqJ7vxCi/DmGQlA0dtzXGMZ/CfCW0lutyvQsa9LGjxrdgF32MtQ
         c/QDedbgl63Lw5WlNw8Rln8asVrW9AwL5SxA4sFksiXlBNiLp45zqPS65dKmXhVkAnz0
         FsBgnHjE86W4cao36oL3pA/4k58+G6NAsn4Nt1/ETDDNRo283tzxd5Zcq3j6acpTGp5w
         i41A==
X-Gm-Message-State: AOAM530q8HUJg78Hisg0XVJ6N2qRUx9M9aB51aov6kiKxUe7cB/HZOZR
        3yKVpbVS5BHAMVVsxbw8WpPIag==
X-Google-Smtp-Source: ABdhPJzkdSrI9bPQqYfFlXq81svJ5+IiAGMGDR301K93K/UkeXCphJAYmh7WEKztCPJm7OSl114X2A==
X-Received: by 2002:a17:902:e34b:b0:14a:4b9e:a0f2 with SMTP id p11-20020a170902e34b00b0014a4b9ea0f2mr6487070plc.91.1642112342117;
        Thu, 13 Jan 2022 14:19:02 -0800 (PST)
Received: from localhost ([121.99.145.49])
        by smtp.gmail.com with ESMTPSA id 65sm3533239pfw.70.2022.01.13.14.19.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 14:19:01 -0800 (PST)
Date:   Fri, 14 Jan 2022 11:18:58 +1300
From:   Daniel Beer <daniel.beer@igorinstitute.com>
To:     Amadeusz =?utf-8?B?U8WCYXdpxYRza2k=?= 
        <amadeuszx.slawinski@linux.intel.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Andy Liu <andy-liu@ti.com>, Mark Brown <broonie@kernel.org>,
        Derek Simkowiak <derek.simkowiak@igorinstitute.com>
Subject: Re: [PATCH v2 1/2] ASoC: add support for TAS5805M digital amplifier
Message-ID: <20220113221858.GA18380@nyquist.nev>
References: <cover.1642063121.git.daniel.beer@igorinstitute.com>
 <a2e4461ee2d2a052984f447f9891f8b4ecc9307c.1642063121.git.daniel.beer@igorinstitute.com>
 <703cec53-5de7-e8c1-5a1f-e44f0cbc141f@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <703cec53-5de7-e8c1-5a1f-e44f0cbc141f@linux.intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 13, 2022 at 10:18:27AM +0100, Amadeusz Sławiński wrote:
> > +static int tas5805m_vol_put(struct snd_kcontrol *kcontrol,
> > +			    struct snd_ctl_elem_value *ucontrol)
> > +{
> > +	struct snd_soc_component *component =
> > +		snd_soc_kcontrol_component(kcontrol);
> > +	struct tas5805m_priv *tas5805m =
> > +		snd_soc_component_get_drvdata(component);
> > +
> > +	if (!(volume_is_valid(ucontrol->value.integer.value[0]) &&
> > +	      volume_is_valid(ucontrol->value.integer.value[1])))
> > +		return -EINVAL;
> > +
> > +	mutex_lock(&tas5805m->lock);
> > +	tas5805m->vol[0] = ucontrol->value.integer.value[0];
> > +	tas5805m->vol[1] = ucontrol->value.integer.value[1];
> > +	dev_dbg(component->dev, "set vol=%d/%d (is_powered=%d)\n",
> > +		tas5805m->vol[0], tas5805m->vol[1], tas5805m->is_powered);
> > +	if (tas5805m->is_powered)
> > +		tas5805m_refresh_unlocked(component);
> > +	mutex_unlock(&tas5805m->lock);
> > +
> > +	return 0;
> > +}
> > +
> 
> put method should return '1' if value changed, so ALSA knows to inform
> userspace utilities about change. You can check if userspace is notified of
> changes with "alsactl monitor", you should see something like:
> node hw:2, #3 (2,0,0,ADC0 Capture Volume,0) VALUE
> when value changes.

Thanks, will fix this.

-- 
Daniel Beer
Firmware Engineer at Igor Institute
daniel.beer@igorinstitute.com or +64-27-420-8101
Offices in Seattle, San Francisco, and Vancouver BC or (206) 494-3312
