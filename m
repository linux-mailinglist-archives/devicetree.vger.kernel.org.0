Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 485DF16EE89
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2020 20:01:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731144AbgBYTBA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Feb 2020 14:01:00 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:43403 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728787AbgBYTBA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Feb 2020 14:01:00 -0500
Received: by mail-ot1-f67.google.com with SMTP id p8so504533oth.10
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2020 11:01:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pQ4ak+9Das/e5xwnLggdDsKWl9ti3J3kF3/FbmXUDbc=;
        b=XqX33oX+sHxEeM+jZRLnPr8HLhDEtrq7aYnt2Tdfn57hcFGjx+4crvZbl9GmYC1Fhj
         1fGKu3REeDdb3JSJhT60IffShLii6XgW5hNiSwGJV7IBt8iKHik/K7Is6t5Dq4awJEBr
         d3lwEIuCGBZcdqL3syitp74iH+w66zrrMgVnd2zBUMoCBN68Ir5T7bX1F/1NzWRtfdto
         zuq2zr2LmZQ26Q4/w6gswGswFTJ+ppixP1yBSsfFdO8a/Lq1asWxRWGQpYmd3gN54xyC
         G19FPcLU77URR0+CbG6AzxdxdpjzRticPmIttadLCf2mv3cWYx+HbNkil/2XY9gg9NSl
         vbZQ==
X-Gm-Message-State: APjAAAUtOwUwIgSdnOinqdSuvHQEVbbvHPI6BLJzrwu2mYews4jtEWQu
        cEN1tvlLCMjsYk9a8IGwVQ==
X-Google-Smtp-Source: APXvYqwK8yIGOQp/O4MLZ9poBq5jLmQ+o2FgqS568qnCEoP9kysOvaaeWzXWQz4ksIy/YaczcK2W5g==
X-Received: by 2002:a9d:674f:: with SMTP id w15mr21912otm.243.1582657259747;
        Tue, 25 Feb 2020 11:00:59 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id u18sm6007149otq.26.2020.02.25.11.00.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 11:00:59 -0800 (PST)
Received: (nullmailer pid 2064 invoked by uid 1000);
        Tue, 25 Feb 2020 19:00:58 -0000
Date:   Tue, 25 Feb 2020 13:00:58 -0600
From:   Rob Herring <robh@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/5] dt-bindings: ARM: Add recent Cortex/Neoverse PMUs
Message-ID: <20200225190058.GA2011@bogus>
References: <cover.1582312530.git.robin.murphy@arm.com>
 <3954ca0b86641e5e6a1935886df6658b9305ec4a.1582312530.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3954ca0b86641e5e6a1935886df6658b9305ec4a.1582312530.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 21 Feb 2020 19:35:29 +0000, Robin Murphy wrote:
> Add new PMU definitions to correspond with the CPU bindings.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v2: no change, just resending for completeness
> 
>  Documentation/devicetree/bindings/arm/pmu.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Applied, thanks.

Rob
