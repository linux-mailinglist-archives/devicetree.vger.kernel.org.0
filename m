Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31C841D43F2
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2020 05:16:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727847AbgEODQd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 May 2020 23:16:33 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:39923 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726176AbgEODQd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 May 2020 23:16:33 -0400
Received: by mail-oi1-f194.google.com with SMTP id s198so1009398oie.6
        for <devicetree@vger.kernel.org>; Thu, 14 May 2020 20:16:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0StfnlWCTTFp92r27GLv48pH80mCOZ4IKYTbMwwyGtI=;
        b=BJfW4VjD1qOdjnqgeHZwbpjRDyARY0ZRQ1gg041xT+z5VYCAmKJ8lO9ZuVeipwORm5
         thYoevW0XMcSFugrLgs4kn8+C71JtpbvqlkgSvgTdHOAQPBer7qpmHm8Sh3t1nqZlHuN
         G1G8E7Ovqd9xoB/J9oMJhhlrpBYuak52J7CZt+PADzJdmACv09NJgDGm+uaOsHsp3AEZ
         PjTFSxkbPfGqTKwPuUWQMAQ7urbyUVZanHr22+XU2mnbwlkG0LsE6+X3m1g1oPfii+Lo
         7MiRlCbEfzbIfp84+mSFfOR5J8cGQcjAdGThhsC7i/SCXYpw7KXzdFJdG9ehZHFipwLT
         CA3w==
X-Gm-Message-State: AOAM530T/U/9hvjHrmrIdgd95RzBrpsRF4DieFfWE07t/bciKJtWUig3
        wjraxBg4HkZKPON3BEWL1UjvQzg=
X-Google-Smtp-Source: ABdhPJyhFa2AewumsZDuk0U0TtsUF18nHvq+KZ9DfYIxW3gYTjTsJyd5oCQlaERXn3mGQPDIIlQDig==
X-Received: by 2002:aca:f454:: with SMTP id s81mr695553oih.138.1589512592606;
        Thu, 14 May 2020 20:16:32 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id h189sm313661oif.10.2020.05.14.20.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 May 2020 20:16:32 -0700 (PDT)
Received: (nullmailer pid 3447 invoked by uid 1000);
        Fri, 15 May 2020 03:16:31 -0000
Date:   Thu, 14 May 2020 22:16:31 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        David Airlie <airlied@linux.ie>,
        Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 19/20] dt-bindings: mali-midgard: Allow dma-coherent
Message-ID: <20200515031631.GA3388@bogus>
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-20-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200513103016.130417-20-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 13 May 2020 11:30:15 +0100, Andre Przywara wrote:
> Add the boolean dma-coherent property to the list of allowed properties,
> since some boards (Arm Juno) integrate the GPU this way.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks!
