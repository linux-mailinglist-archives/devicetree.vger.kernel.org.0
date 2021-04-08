Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D09A358E2B
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 22:15:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231699AbhDHUOt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 16:14:49 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:41905 "EHLO
        mail-oi1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230522AbhDHUOt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 16:14:49 -0400
Received: by mail-oi1-f174.google.com with SMTP id z15so3464906oic.8
        for <devicetree@vger.kernel.org>; Thu, 08 Apr 2021 13:14:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Pwd95kW+/WQgOUl/naA83Z24CRy0wz0P5T1F2fsIcvQ=;
        b=HPA+VcDy0/BF9xz41XX4u12fn5xMUXvUKq7IgPphqJI6SgApw9z6F6dJaeO03hwcb9
         iCTK9+ICdpcnPbOTaJ2G/XRhwqdb2ufUGEFzIguIeSuC3LhHCZAitlh8quWo9DgOVy09
         LutF5WI4qEUzR7CU7AwtF6kxqdCJqRssrUDhVvTCgEoIP3lzlDK7z9D62zI/utPYgMg7
         JguKwWsrJi678QPphCZzfzEXeBA89wZQJKqPWL4oNPDj+gjEdCXOs+WYRq/msZB1/v3A
         McQuu/rm6i6Z94zUoKqtP36kTNcYFvsIdXn6Zn+3V7j9BVTABlJwR90ZcAeHgLzUWLQt
         oURA==
X-Gm-Message-State: AOAM530hOSMu+Yb+IpOI8AxfjSRxF/wahTfr/dwSgdH/O6HoNgXnWwq+
        yjTTsdxpsYMbBqM5etwz+Q==
X-Google-Smtp-Source: ABdhPJzGQ/NWRWzpAYzdz4R1ELVLvtO6VRtJHg8D6JLaumbSBkhH67AWhmHvBFv7hotHmEaUwitPeQ==
X-Received: by 2002:aca:2103:: with SMTP id 3mr7545882oiz.80.1617912877475;
        Thu, 08 Apr 2021 13:14:37 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id d24sm91745otf.12.2021.04.08.13.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 13:14:36 -0700 (PDT)
Received: (nullmailer pid 1887907 invoked by uid 1000);
        Thu, 08 Apr 2021 20:14:35 -0000
Date:   Thu, 8 Apr 2021 15:14:35 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v4 4/5] dt-bindings: arm: add compatible for Forlinx
 OKA40i-C and FETA40i-C
Message-ID: <20210408201435.GA1887854@robh.at.kernel.org>
References: <20210407111428.3755684-1-i.uvarov@cognitivepilot.com>
 <20210407111428.3755684-5-i.uvarov@cognitivepilot.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210407111428.3755684-5-i.uvarov@cognitivepilot.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 07 Apr 2021 14:14:27 +0300, Ivan Uvarov wrote:
> The FETA40i-C is a SoM by Forlinx based on the Allwinner R40/A40i SoC.
> The OKA40i-C is a carrier/development board by the same company based on
> this SoM.
> 
> This patch adds compatible strings for these two devices in preparation for
> the next patch containing a devicetree for them.
> 
> Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
> 
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
