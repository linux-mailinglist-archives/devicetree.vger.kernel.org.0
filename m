Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A9F613B5E5
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 00:31:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728759AbgANXbh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jan 2020 18:31:37 -0500
Received: from mail-ot1-f65.google.com ([209.85.210.65]:37508 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728892AbgANXbg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jan 2020 18:31:36 -0500
Received: by mail-ot1-f65.google.com with SMTP id k14so14447338otn.4
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2020 15:31:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jAkgnrf4y6WZwtNfVCRDWdRSB0xmK/6Aa/25HCZGKjg=;
        b=qPshBYbN+OAmmEWT00mCMNiesEdDycioBB0ZvKc6ROFs5e/KkD0vUTw781EtjXJSgO
         T+hftX5dCTiJRUp0ODdsbpSqe5LwaRG0zZzohlYn8jnCi0em2Fo/2fBuRqJImXMVgtJM
         b0fE9aw2lYuT5N0cBhaUSYk/rKQZc+/hz/6qkcsakc8TrOLb4nEK0Vd40BSbMOzB4HvY
         XXvVJ2ft/uKyOel/nKLzc3SRubZjmqBBvnlS8JAnMjLHIQywq2pfFx21adUGDPA7Gu4j
         OpKkIITemFfctVLZfyIORovHfQ5HhXy8ul6mkZqAouidUSySh3QG2Ackb1+oqgZveXYG
         ybSg==
X-Gm-Message-State: APjAAAXSiiD2NcqO7XgIYVXI4xW48pu81jytZiYg+Rl1EWyp53NCeGBu
        e7/HmRtQYNX8npRKyWaZv3Fnva8=
X-Google-Smtp-Source: APXvYqwOCjF2ggBPqa+yRys2vDN8YOOFrDnojfK7o1vVIk2j1GqFaSGGPPgH4E1EDCj550bbAjtwdA==
X-Received: by 2002:a05:6830:2361:: with SMTP id r1mr675506oth.88.1579044695526;
        Tue, 14 Jan 2020 15:31:35 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id a24sm5089541oic.10.2020.01.14.15.31.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 15:31:34 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2209ae
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Tue, 14 Jan 2020 17:31:34 -0600
Date:   Tue, 14 Jan 2020 17:31:34 -0600
From:   Rob Herring <robh@kernel.org>
To:     Benjamin Gaignard <benjamin.gaignard@st.com>
Cc:     dmitry.torokhov@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, hadess@hadess.net,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, yannick.fertre@st.com,
        Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: touchscreen: Convert Goodix
 touchscreen to json-schema
Message-ID: <20200114233134.GA23810@bogus>
References: <20200108091118.5130-1-benjamin.gaignard@st.com>
 <20200108091118.5130-3-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200108091118.5130-3-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 8 Jan 2020 10:11:18 +0100, Benjamin Gaignard wrote:
> Convert the Goodix binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> version 2:
> - enumerate goodix's I2C adresses
> - add description for irq-gpio property
> - reference the common properties used by goodix
> 
>  .../bindings/input/touchscreen/goodix.txt          | 50 --------------
>  .../bindings/input/touchscreen/goodix.yaml         | 78 ++++++++++++++++++++++
>  2 files changed, 78 insertions(+), 50 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/goodix.txt
>  create mode 100644 Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
