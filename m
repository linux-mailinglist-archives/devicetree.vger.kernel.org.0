Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC623134E4E
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 22:01:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726721AbgAHVBw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jan 2020 16:01:52 -0500
Received: from mail-oi1-f196.google.com ([209.85.167.196]:41830 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725446AbgAHVBw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jan 2020 16:01:52 -0500
Received: by mail-oi1-f196.google.com with SMTP id i1so3939164oie.8
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2020 13:01:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PKDSlAFhVxG7yvkR8gMW2sYcjaqMDww08or3P6KMGS4=;
        b=MwWByuvmjPxHHj4IieakW2u7xY2XOoXfDlHu+A9GuNcHNP8L+eC154a/Ej6hoSmIac
         E7wpapeQFsObsLIbU4kGiqep33cD1fe/2FMr74iOHGdoO4kuUC9QQN8mvQ12LDQfJJE2
         9zCpTaImlmVEYcXKHJgruyDj2LEXmCgMAuh915CN6LRAI6tC1SUwAnAOhKIfz5BIxfS0
         tg5nWMZRJEe2wD5088fQtyoxFfBoLrcJe4HllT5Wg+95i2w11oZGVwbYVMIDxNamVVjI
         9otAAMFvZgB0ZCAXyieUuHAiYI9CAVkDsn1FVRtuCkHuajXxAS4S8rm6eL65qP1hokDn
         bWAg==
X-Gm-Message-State: APjAAAUMJ2pjD7jS51CfPPXgnQ+GYJbJX3v/9W4ZMMID0Vren3SH3yAU
        aQX6s0yyE4UsY3cfjwOvvSfXS0k=
X-Google-Smtp-Source: APXvYqwRnedRMRRIi98Sf0SmUW5p4TSJoDFhi4ZLTORBSyP4E+qnN6P8hxNRbiWmELbchm1Lio78NQ==
X-Received: by 2002:aca:d483:: with SMTP id l125mr434185oig.124.1578517311588;
        Wed, 08 Jan 2020 13:01:51 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id a19sm1517786oto.60.2020.01.08.13.01.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 13:01:50 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220333
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Wed, 08 Jan 2020 15:01:49 -0600
Date:   Wed, 8 Jan 2020 15:01:49 -0600
From:   Rob Herring <robh@kernel.org>
To:     Helmut Grohne <helmut.grohne@intenta.de>
Cc:     Support Opensource <support.opensource@diasemi.com>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: mfd: da9062 can be a system power
 controller
Message-ID: <20200108210149.GA27171@bogus>
References: <20200107120613.GA746@laureti-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200107120613.GA746@laureti-dev>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 7 Jan 2020 13:06:15 +0100, Helmut Grohne wrote:
> The DA9062 can be used to power off a system if it is appropriately
> wired.
> 
> Signed-off-by: Helmut Grohne <helmut.grohne@intenta.de>
> ---
>  Documentation/devicetree/bindings/mfd/da9062.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
