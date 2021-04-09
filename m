Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEEEF35A101
	for <lists+devicetree@lfdr.de>; Fri,  9 Apr 2021 16:26:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233610AbhDIO1I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Apr 2021 10:27:08 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:37535 "EHLO
        mail-oi1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233752AbhDIO1H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Apr 2021 10:27:07 -0400
Received: by mail-oi1-f175.google.com with SMTP id k25so5953951oic.4
        for <devicetree@vger.kernel.org>; Fri, 09 Apr 2021 07:26:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9C7OPqMhVln769/vf17xtQTAum4EJMs/Irk0AbGCbR4=;
        b=VrvAG1YcRmGqdc19I102TsG0EpJ7g2N1AVPCWZ0eCpFC6bYZWGzdHD7sxgQDe74Nwq
         VNVISu0N8pp/qgMcPpJHoe5lk+KMfVqEcyGjeFUSer6jyMbg1Itd4FDwgY4+bkWntG6z
         akcC+hlKjgHw6UFXa3Pw8yjqKix86Pit0WBnnpe9jxRz2DzlLLMz+TP9cDZjUBA4qV1w
         yO8liXDXvApfXrzP5X+tMlkI6oVDj7AK3or0tnVtj/crFoj1C6OuorJk4OmKU0rr4WMT
         jaaiaIdqhTcaj+w3PoLISrUFnwQXTKj4tBUyqsCRxOqe1tHsB1+A3CqfS2s/tPSnGt7I
         1uNw==
X-Gm-Message-State: AOAM532AkZ8jzh9E+THvdwLdYK0zyZRtGN0sMYG3Tg9YlwNqKklGniqZ
        MoVbrV6XnJ2OC390OBePwA==
X-Google-Smtp-Source: ABdhPJz3+yLyFhyj8ORh+C30cUQ/wzQ2koxEnoVEdv0vguLB8hQL3zL+Cw1pTBb0PXF4/eQKXe6ADQ==
X-Received: by 2002:a05:6808:54c:: with SMTP id i12mr10015355oig.17.1617978414089;
        Fri, 09 Apr 2021 07:26:54 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id a15sm612070otd.57.2021.04.09.07.26.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 07:26:53 -0700 (PDT)
Received: (nullmailer pid 3600039 invoked by uid 1000);
        Fri, 09 Apr 2021 14:26:52 -0000
Date:   Fri, 9 Apr 2021 09:26:52 -0500
From:   Rob Herring <robh@kernel.org>
To:     Yunus Bas <y.bas@phytec.de>
Cc:     devicetree@vger.kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        thierry.reding@gmail.com, sam@ravnborg.org, robh+dt@kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: display: simple: Add EDT ETM0350G0DH6
Message-ID: <20210409142652.GA3599944@robh.at.kernel.org>
References: <20210331181317.464926-1-y.bas@phytec.de>
 <20210331181317.464926-2-y.bas@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210331181317.464926-2-y.bas@phytec.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 31 Mar 2021 20:13:17 +0200, Yunus Bas wrote:
> The Emerging Display Technology ETM0350G0DH6 is a 3.5" WVGA TFT panel
> with capacitive multitouch. Add it to the list of compatibles.
> 
> Signed-off-by: Yunus Bas <y.bas@phytec.de>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml        | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
