Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A01FA207B59
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2020 20:16:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406028AbgFXSQL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jun 2020 14:16:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406032AbgFXSQK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jun 2020 14:16:10 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AC9AC0613ED
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2020 11:16:09 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id s10so3183265wrw.12
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2020 11:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=vEE+cCagyynmemrGijLPmssYwIESzMX1SE4z58oNTeY=;
        b=PACeauBnHB4IRAwpME1nagEtAloxPaEYhO3RZGIWA7WpWs7UdpRkFrhqwK/38eXKTb
         MgA2rC99nTXO06aJaeKtqBQ4hQMH3xG5mO0Vh7a1FKb85qhPoNfUlrvF01dqO8t8WHXO
         B95BQDfyO/W7VSp0hmOZMRqNqf/zkVRJfafF6sgpHgzRLMeYHsPc6cQg/hd95Z6u1FAC
         UerFlmDKk9lqHRVyfJ9Kz7Im84N+ZJ1HmbS613LAP3J9y6RlznzczX12e8iHtYY/SkJI
         tGzMtxp/MOx0DztQ1Eag8fw0VrXJczxp0eOzRhC04c2i0UgUSVHFM+haxW2KibpbW/jr
         dZxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=vEE+cCagyynmemrGijLPmssYwIESzMX1SE4z58oNTeY=;
        b=HUSFPD/25HsF4pXez6ncacuDZs3OVCQAmQPQJeGp+GJjd4wTAVFaaepHN5lPFCt5zH
         hThOw53EE0NvLchk/PdSMvIpOv4EHE+byqNxaQX8Pvq0gOdFN2L0qtFjFCjNwyxnZt5x
         HaImDXKPlTFesgtKyuNKW/jc9MCWciFSdZUiMikriN7g89u0jTytXtpK1IKc0aQxH32C
         loYP7X+ZnmbnBwN9wR/HzswLkdLmjcXmK+EnPBZT1hOddZrITAGsBEs6TtdkrLB2zZ0Q
         knt2LsuRrT6HernTlXYESwbo2Pj30KExSCJN8lNifPsCN2Y9JzSlnpebOGOMdZyAAf9k
         cI0Q==
X-Gm-Message-State: AOAM532Unbq68DzNgBEhy8YpZ/qGZgcNzcPpEl2bP4DaW8lsOEWFeiMY
        ncdU/mHnUgMVgyTrMnn0mDP5+Q==
X-Google-Smtp-Source: ABdhPJwthKa+x+ZDgO4Y76Lis50CaKMXrmW51/0dmqQgM1NpqUQmeO/Npa89EkAARjUX45u5QLZqgg==
X-Received: by 2002:adf:e90d:: with SMTP id f13mr3152153wrm.146.1593022568188;
        Wed, 24 Jun 2020 11:16:08 -0700 (PDT)
Received: from dell ([2.27.35.144])
        by smtp.gmail.com with ESMTPSA id 2sm8962784wmo.44.2020.06.24.11.16.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 11:16:07 -0700 (PDT)
Date:   Wed, 24 Jun 2020 19:16:05 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Masahiro Yamada <masahiroy@kernel.org>
Cc:     linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 4/4] ARM: dts: uniphier: change support card to
 simple-mfd from simple-bus
Message-ID: <20200624181605.GJ954398@dell>
References: <20200623114614.792648-1-yamada.masahiro@socionext.com>
 <20200623114614.792648-4-yamada.masahiro@socionext.com>
 <20200623122413.GA954398@dell>
 <CAK7LNAR-dm6Zbtt9MsUunn9+qqwTtRCbq4Wzb=8uKLtfaLK6TQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAK7LNAR-dm6Zbtt9MsUunn9+qqwTtRCbq4Wzb=8uKLtfaLK6TQ@mail.gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 25 Jun 2020, Masahiro Yamada wrote:

> On Tue, Jun 23, 2020 at 9:24 PM Lee Jones <lee.jones@linaro.org> wrote:
> >
> > On Tue, 23 Jun 2020, Masahiro Yamada wrote:
> >
> > > 'make ARCH=arm dtbs_check' emits the following warning:
> > >
> > >   support-card@1,1f00000: $nodename:0: 'support-card@1,1f00000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
> > >
> > > Maybe, simple-mfd could be a better fit for this device.
> >
> > The two should be equivalent.
> 
> Yes, I know.
> That's why I can change "simple-bus" to "simple-mfd"
> with no risk.
> 
> The difference is schema-check.
> 
> The node name for "simple-bus" is checked by 'make dtbs_check'.
> 
> See this code:
> https://github.com/robherring/dt-schema/blob/v2020.05/schemas/simple-bus.yaml#L17
> 
> Even if I rename the node, it does not accept the
> unit name '1,1f00000'
> 
> > What do you mean by "maybe"?  Does this squash the warning?
> 
> "maybe" means I am not quite sure
> which compatible is a better fit
> to describe this device.
> 
> As mentioned above, simple-bus and simple-mfd
> are interchangeable from a driver point of view.
> 
> This add-on board is integrated with various peripherals
> such as 16550a serial, smsc9115 ether etc.
> The address-decode is implemented in a CPLD device.
> It has chip selects and local addresses, which are mapped to
> the parent.
> 
> It can be either simple-bus or simple-mfd, I think.
> 
> 
> dt-schema checks the node name of simple-bus.
> Currently, there is no check for simple-mfd.
> 
> So, I think this patch is an easy solution
> to fix the warning.

Yes, looking at the documentation it seems as though 'simple-mfd'
would be a better fit.  Is the device a single IP with various
different functions?

> Rob is in Cc. Please add comments if any.
> 
> > Isn't the issue caused by the ','?
> 
> Right.
> 
> The node name of simple-bus
> must meet the regular expression:
> "^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$"
> 
> 
> Even if I rename the node
> "support-card@1,1f00000"
> to "bus@1,1f00000", the warning is still
> displayed due to ','
> 
> "1,1f00000" means
> the address 0x01f00000 of chip select 1.

Is this an officially accepted format?

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
