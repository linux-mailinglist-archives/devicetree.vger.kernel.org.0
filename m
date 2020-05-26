Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BA831A899C
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 20:31:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2504011AbgDNSbp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 14:31:45 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:42754 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2504010AbgDNSbn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 14:31:43 -0400
Received: by mail-oi1-f193.google.com with SMTP id d7so6261538oif.9
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 11:31:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=taRVZa25aht5wtqZEiTgIUDAQePNKgTm+F5r+ybEdWk=;
        b=VOnZWHKL0p/XPwYzCQV0BitZVJc1CKWmNXItg62rOcuf2P40/ia5Hq9v/Arpheoxon
         XKGGRyAZbDl0zPHfsVOQxLESOVm1a0EXf0se2kVsiXFHkD+cQZxCbsghDN3tuezXM/Do
         baV5aOXCg+wlm0Rb4V1OguFR5nu+EIFHYu+B+1GaHDRDqxmpoS44cFnUiuGM6UZkVJ6S
         dgB1QXwOv73aB+0HYTnfQYSYpDmBvNM6lryeyvQwmuKqf4ct+POBO5FKyyJyUYYDTXM8
         gigREB3CiWGVgtUY2I4XyA64rl/VyQQFvUD/Vl89poM+XbEU4EuWKRsooLdtY+lU2bZC
         KDjw==
X-Gm-Message-State: AGi0PuZh4kkUmscucev/FP0Ar987xQaa1bgFsX13QMdPb0dc+NCVSIZr
        GlGkYCj2YAmKRsGpBb1epA==
X-Google-Smtp-Source: APiQypKKcVloCWi3OdTWdLi0buDCJnFwulht3+4EHro8y1N+FYues9hY8JRCifPPYg7EDVkOEA4izQ==
X-Received: by 2002:a05:6808:7c2:: with SMTP id f2mr7562382oij.81.1586889100922;
        Tue, 14 Apr 2020 11:31:40 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id s73sm1329709oih.14.2020.04.14.11.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 11:31:40 -0700 (PDT)
Received: (nullmailer pid 701 invoked by uid 1000);
        Tue, 14 Apr 2020 18:31:39 -0000
Date:   Tue, 14 Apr 2020 13:31:39 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Vinay Simha BN <simhavcs@gmail.com>
Subject: Re: [PATCH v2 12/36] dt-bindings: display: convert jdi,lt070me05000
 to DT Schema
Message-ID: <20200414183139.GA557@bogus>
References: <20200408195109.32692-1-sam@ravnborg.org>
 <20200408195109.32692-13-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200408195109.32692-13-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Apr 2020 21:50:45 +0200, Sam Ravnborg wrote:
> v2:
>   - drop address in dsi node in example (Rob)
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: Vinay Simha BN <simhavcs@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Vinay Simha BN <simhavcs@gmail.com>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../display/panel/jdi,lt070me05000.txt        | 31 ---------
>  .../display/panel/jdi,lt070me05000.yaml       | 69 +++++++++++++++++++
>  2 files changed, 69 insertions(+), 31 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/jdi,lt070me05000.txt
>  create mode 100644 Documentation/devicetree/bindings/display/panel/jdi,lt070me05000.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
