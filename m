Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDC5D27BAB9
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 04:14:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727288AbgI2COp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Sep 2020 22:14:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726961AbgI2COm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Sep 2020 22:14:42 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A47EC0613CE
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 19:14:41 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id x22so2998645pfo.12
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 19:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=NJyfJV0mLhvnopBF7R+bmMKM4pD4/rdCgYSx26wTIQQ=;
        b=WeX9L69GnQyTFblx+JruceS9uLJZT3wTAfEH06yPM7treyDdXRmMfVSB7sqs09v5qk
         fDdfP3kdprwfjBcjC5USwBtO+LCxvGMufjgkvMSIduvWiEIQQ7sfgtd3JznTK9ZhLgzw
         LH2IMDposzLFHkQPVNm8IMBPCaSnwavCQJAqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NJyfJV0mLhvnopBF7R+bmMKM4pD4/rdCgYSx26wTIQQ=;
        b=AFLQLakIwPJR4e/OLIEX/W6fn5v9fReyDOnojvKtLs/kHX9ze2DKIg0nNSYVkr7PPf
         BktNUSIjuYO2BcqaiAuhp2qcVP0HnHDSF8ShbKSrmT94gODmGNhS0aFs9e4KShZ69H5u
         fCdpJnIkxrxTUFEAgfhjdioOo9wVEXhhk6UzaWuR2cdqRtd1ecef2Ci1vfO6RjXa4aE7
         ZdWgCEVyGByY9aZBB7l7Z7lwaLUdaICcSyDebzdV3w1Rvn8nxeFVJ0X9VLdYRMeKhRjW
         QEEBR9PxP/m7+6yLP80t6ZtlcPsCZrH9FRrzUEsJnPZ91MmC1YNs4IZIpiEyIyhcaFsa
         82sA==
X-Gm-Message-State: AOAM531zF8xRdLwTnVOdCkAA3qZkAlQCU3mI64RBSxCYDFXKNAwL5bkf
        OhiZYopyASqYbxzD2ibr241vVA==
X-Google-Smtp-Source: ABdhPJzxfQrnv9qqyOeEAlNcjoz6xg6zHl6YLNk0ci2aubO4kcV3KSuIPgoUGDlZ1pvgC8UfFJSDpg==
X-Received: by 2002:a17:902:a713:b029:d2:6356:8761 with SMTP id w19-20020a170902a713b02900d263568761mr2200547plq.77.1601345680707;
        Mon, 28 Sep 2020 19:14:40 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:f693:9fff:fef4:e70a])
        by smtp.gmail.com with ESMTPSA id l13sm2830722pgq.33.2020.09.28.19.14.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 19:14:40 -0700 (PDT)
Date:   Mon, 28 Sep 2020 19:14:39 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Doug Anderson <dianders@chromium.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>, linux-usb@vger.kernel.org,
        Bastien Nocera <hadess@hadess.net>,
        Stephen Boyd <swboyd@chromium.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: usb: Add binding for discrete
 onboard USB hubs
Message-ID: <20200929021439.GC1099144@google.com>
References: <20200928101326.v4.1.I248292623d3d0f6a4f0c5bc58478ca3c0062b49a@changeid>
 <CAD=FV=XWphkhFmEk6dzGn7h2mY5xBHY554rOfn+bSi5Nci27gA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAD=FV=XWphkhFmEk6dzGn7h2mY5xBHY554rOfn+bSi5Nci27gA@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 28, 2020 at 03:13:26PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Mon, Sep 28, 2020 at 10:14 AM Matthias Kaehlcke <mka@chromium.org> wrote:
> >
> > +examples:
> > +  - |
> > +    usb_hub: usb-hub {
> > +        compatible = "realtek,rts5411", "onboard-usb-hub";
> > +        vdd-supply = <&pp3300_hub>;

I will admit that using the name 'vdd' for a sole supply is somewhat
arbitrary, if anybody has better suggestions I'm open to it :)

> > +    };
> > +
> > +    usb_controller {
> 
> Super nitty nit: prefer dashes for node names.

ack

> > +        dr_mode = "host";
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        /* 2.0 hub on port 1 */
> > +        hub@1 {
> > +            compatible = "usbbda,5411";
> 
> Presumably we need something in the bindings for "usbbda,5411" ?

I'm not sure how this should look like in a .yaml. Rob, do you have any
suggestions?

Strictly speaking the compatible string isn't needed, the driver will match
the device without it based on VID/PID and the port.

> > +            reg = <1>;
> > +            hub = <&usb_hub>;
> > +        };
> > +
> > +        /* 3.0 hub on port 2 */
> > +        hub@2 {
> > +            compatible = "usbbda,411";
> 
> Presumably we need something in the bindings for "usbbda,411" ?

ditto
