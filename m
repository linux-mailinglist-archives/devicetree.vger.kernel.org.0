Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2BE0613C75D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 16:22:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729107AbgAOPWa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jan 2020 10:22:30 -0500
Received: from mail-ot1-f66.google.com ([209.85.210.66]:38373 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726165AbgAOPWa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jan 2020 10:22:30 -0500
Received: by mail-ot1-f66.google.com with SMTP id z9so14287400oth.5
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2020 07:22:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=A7MJTIvyK8kzMyer64PozPs2FgL7mrURdQQ2XoMswP4=;
        b=IXfQj1nivXhmHEEDVt5ucIrzJrfc+QF+KtuKXgx/fhSlmWJpMTGhJmdJ3jXVk8Gjyh
         hjidOMOx/SfKFepPhxK+LcI2mzJ6Z6KTdGSRAgZrwdRn1z9wYb7b/LXSIlJUIcykTpA2
         gIfnhhp1clOqr8VXaCRG65mOqsnn0xqOTTxf6ix7MDdqnmOATOEGsSp82qtom5pmAqSm
         n7fkX4/fL3rJEZaXSzvC37PzlUveVLAOe2r5uca/1XbPhDk49EMfZHyXUTC37Q0Fkz9K
         C9lqU48X9uo6KQRZuAP7arE+LqPAjDHisjRApeLpT4Oe7zzdYOj87yUGBCsl48N8nK+c
         TFBw==
X-Gm-Message-State: APjAAAVvR5jH+GLyqYVfoEGWbBdVIf1xDZlIEQaUEmMCFG8SnauNC07j
        1wnHD0acbnj4jzAU4kSGEuB6tPQ=
X-Google-Smtp-Source: APXvYqy0Q8oFCbk7LnkYg/lGztss6zYEctVhvOeN7E+ch58/Z5l0CnTvsN3PPajDSASNv2B0ZA1nbg==
X-Received: by 2002:a05:6830:1e09:: with SMTP id s9mr3146330otr.139.1579101749139;
        Wed, 15 Jan 2020 07:22:29 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id s6sm860780otd.72.2020.01.15.07.22.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 07:22:28 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220379
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Wed, 15 Jan 2020 09:22:27 -0600
Date:   Wed, 15 Jan 2020 09:22:27 -0600
From:   Rob Herring <robh@kernel.org>
To:     Icenowy Zheng <icenowy@aosc.io>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-sunxi@googlegroups.com, linux-arm-kernel@lists.infradead.org,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH 1/5] dt-bindings: vendor-prefix: add Shenzhen Feixin
  Photoelectics Co., Ltd
Message-ID: <20200115152227.GA13106@bogus>
References: <20200110155225.1051749-1-icenowy@aosc.io>
 <20200110155225.1051749-2-icenowy@aosc.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200110155225.1051749-2-icenowy@aosc.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 10 Jan 2020 23:52:21 +0800, Icenowy Zheng wrote:
> Shenzhen Feixin Photoelectics Co., Ltd is a company to provide LCD
> modules.
> 
> Add its vendor prefix.
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
