Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EA364004B1
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 20:13:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350340AbhICSOA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 14:14:00 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:41538 "EHLO
        mail-ot1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349959AbhICSOA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 14:14:00 -0400
Received: by mail-ot1-f41.google.com with SMTP id o16-20020a9d2210000000b0051b1e56c98fso63990ota.8
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 11:13:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=uwy1cIXLnNNO9I8X8sPbbrCEF+5qddSDU9l6sUaMBAI=;
        b=W8DcjNaynCR8rQA3X4FN0j9M4BGQ+qqlw/YYLZTPp3XmGDno35/6iwlm1fkXDm4Da5
         h+3Bzv8ZnrlwiY15o2277HamRxF5bA17QZgODjTPk7O7j6KIODSA7ExZddYBgrgw+AJL
         Zb7uUxRDG1/lyk4OZEbXPuWhpRSSL2hltEACj3G3Y4TW5cu/VKi4BdQIyGlk8oHnkhLg
         yF4OH8xeKF92Ek8b/3WZHR2EiTAGMYrEXWfDHHeHQcmjpaUap9DjKIkc4TUKtk0PNLIl
         NXr5ehlw1ZZcVbQi0lJCuaWYjs3OkWwGFxAlI6uIPDhCLY/LWWD1FmseI1CWy2TdIRMS
         Dg7w==
X-Gm-Message-State: AOAM533/8YywuyHvWX1nKb5rjwXNmDj/hAc66fiRtsXIn3gPpNQkaYuT
        HzQBwqnDv2g9H0JIa8NRfA==
X-Google-Smtp-Source: ABdhPJygSXtqelB34nK8m0fSfXY8917yNB1nm9hyhNF8K7VD7qhKu5oAyDlM6+NTesA+haT8aqnt4g==
X-Received: by 2002:a05:6830:110a:: with SMTP id w10mr266346otq.291.1630692780126;
        Fri, 03 Sep 2021 11:13:00 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id w6sm18208otp.3.2021.09.03.11.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 11:12:59 -0700 (PDT)
Received: (nullmailer pid 3216901 invoked by uid 1000);
        Fri, 03 Sep 2021 18:12:58 -0000
Date:   Fri, 3 Sep 2021 13:12:58 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH v2 06/52] dt-bindings: arm: Convert ARM CCI-400 binding
 to a schema
Message-ID: <YTJlqt/XUA1C2AlX@robh.at.kernel.org>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-7-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-7-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:18:06 +0200, Maxime Ripard wrote:
> The ARM CCI-400 Interconnect is supported by Linux thanks to its device
> tree binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v1:
>   - Reduced the max number of interrupts
>   - Comented the pl330 compatible to avoid a warning
>   - Added cci-control-port to the cpus schemas
> ---
>  .../devicetree/bindings/arm/arm,cci-400.yaml  | 216 +++++++++++++++++
>  .../bindings/arm/cci-control-port.yaml        |  38 +++
>  Documentation/devicetree/bindings/arm/cci.txt | 224 ------------------
>  .../devicetree/bindings/arm/cpus.yaml         |   2 +
>  4 files changed, 256 insertions(+), 224 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,cci-400.yaml
>  create mode 100644 Documentation/devicetree/bindings/arm/cci-control-port.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/cci.txt
> 

Applied, thanks!
