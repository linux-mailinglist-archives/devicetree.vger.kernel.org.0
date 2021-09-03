Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B196400634
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 21:54:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350011AbhICTzO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 15:55:14 -0400
Received: from mail-oo1-f48.google.com ([209.85.161.48]:35549 "EHLO
        mail-oo1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234588AbhICTzO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 15:55:14 -0400
Received: by mail-oo1-f48.google.com with SMTP id y3-20020a4ab403000000b00290e2a52c71so26865oon.2
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 12:54:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TXodp5hpRen1nungg/ifFhQtVddVip5ODoYcNya31mY=;
        b=Nn+il1WliL5lwn2L1QdeuwuvHGIKvakFJWTroyKHcIV07L8WPA9KV3+KDnRh2mfg/K
         1YWzBsCKnnqKzolPoSQRFMBVog7V+1xHSu8BM/CsPfC6p92sKLv9jRdhyNiyB5CASwcu
         STiJGt/KFuGqeNLXF3c82uVVyejB4GGhyPE1TwJb0K+EEhYZ+cbJXK9zZ+sjFQBgQ94E
         Gxu9LU4cYbBSddqs2Z+FDV5qOour7QbZVhK7SNzPehX//oUdWj31jMQ4mCqt7ReNV7+r
         eeWMaRKr8G+vvZu5gbgzybv2NpVQmEyeOY7xrlhVU5xmwGck85qzvhp0z1Aqq/wbKadx
         CU2Q==
X-Gm-Message-State: AOAM533+FTlbpvPDxYM9RoUakfNtPkxQfT7GsfN4+Z83voTROhF3OF4K
        tWYAy9E3LQNi5Eb0sVV/JQ==
X-Google-Smtp-Source: ABdhPJzeyHJE5yBi5Jl4+QNAtj/hTa7QUj0BQoUeLYvtxZOnd576AMb9DD4UFIY2FD9XSi0th1dkTw==
X-Received: by 2002:a4a:1e46:: with SMTP id 67mr4329586ooq.38.1630698853493;
        Fri, 03 Sep 2021 12:54:13 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id n19sm64685otl.63.2021.09.03.12.54.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 12:54:12 -0700 (PDT)
Received: (nullmailer pid 3351778 invoked by uid 1000);
        Fri, 03 Sep 2021 19:54:11 -0000
Date:   Fri, 3 Sep 2021 14:54:11 -0500
From:   Rob Herring <robh@kernel.org>
To:     Tanmay Jagdale <tanmay@marvell.com>
Cc:     linux-arm-kernel@lists.infradead.org, lcherian@marvell.com,
        bbhushan2@marvell.com, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, suzuki.poulose@arm.com,
        leo.yan@linaro.org, robh+dt@kernel.org, al.grant@arm.com,
        mike.leach@linaro.org, sgoutham@marvell.com,
        mathieu.poirier@linaro.org
Subject: Re: [PATCH 1/2] dt-bindings: coresight: Add burst size for TMC
Message-ID: <YTJ9Y6Fs6CKSHm0S@robh.at.kernel.org>
References: <20210901131049.1365367-1-tanmay@marvell.com>
 <20210901131049.1365367-2-tanmay@marvell.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901131049.1365367-2-tanmay@marvell.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 18:40:48 +0530, Tanmay Jagdale wrote:
> Add "arm,max-burst-size" optional property for TMC ETR.
> If specified, this value indicates the maximum burst size
> that can be initiated by TMC on the AXI bus.
> 
> Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>
> ---
>  Documentation/devicetree/bindings/arm/coresight.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
