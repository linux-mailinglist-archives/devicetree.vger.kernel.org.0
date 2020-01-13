Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 10848139C76
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2020 23:30:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728797AbgAMWaQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jan 2020 17:30:16 -0500
Received: from mail-oi1-f195.google.com ([209.85.167.195]:45871 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726530AbgAMWaP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jan 2020 17:30:15 -0500
Received: by mail-oi1-f195.google.com with SMTP id n16so9901747oie.12
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2020 14:30:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2aqbv7Gs5aPw45r0A4Glmj6TozevE0VvRNxou586VsA=;
        b=rcVBWp+mqQDUqAgR+sU7irAu2fZ6YAGdU48xqPOU5lmN+TM50A5UqBcN38HEVNX2A8
         xbmuCc9Vo/O3zxN37++ILUnOgTGytu16X30fFVHwAFC6YO/cFtZMK//tKA8oxpxGsJxj
         +7WGPKwiWOck4to5NVOrHJSM9ENMRVRsx5j+QU0Czbga3RQr+BwokBY31tnr7lHnT/A/
         Ldf4qleeVxTA5Uii7JQsqRbRNunMUhMtALiyCaBpA9AyT1agtd8Dt/DdgVfjMYe4SBlo
         4UqFIOJAQ6rO0chl7utiNK/rGZQFALP4MsRwMs8nT+/+SfSmYjcS5qf8a4+Ur5GS3kih
         Teqg==
X-Gm-Message-State: APjAAAWX/Wi3Z7w4n9HnGfga3H9va2uM3skDL4XZtW4KvkD5JFJ+vePn
        dnWBp1JJETlpwVxcuM/Q/ceNptM=
X-Google-Smtp-Source: APXvYqwFBNC0Fiuvxr0X8yQxDeccndYlIgmnp3yByVkAJhO8r7pp4+svnNhD7lJ0Z4iPvxuvz6uQAQ==
X-Received: by 2002:a05:6808:4c2:: with SMTP id a2mr13570228oie.118.1578954614963;
        Mon, 13 Jan 2020 14:30:14 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id a17sm4591590otp.66.2020.01.13.14.30.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2020 14:30:13 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220b00
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Mon, 13 Jan 2020 16:30:11 -0600
Date:   Mon, 13 Jan 2020 16:30:11 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sowjanya Komatineni <skomatineni@nvidia.com>
Cc:     skomatineni@nvidia.com, thierry.reding@gmail.com,
        jonathanh@nvidia.com, broonie@kernel.org, lgirdwood@gmail.com,
        perex@perex.cz, tiwai@suse.com, digetx@gmail.com,
        mperttunen@nvidia.com, gregkh@linuxfoundation.org,
        sboyd@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
        pdeschrijver@nvidia.com, pgaikwad@nvidia.com, spujar@nvidia.com,
        josephl@nvidia.com, daniel.lezcano@linaro.org,
        mmaddireddy@nvidia.com, markz@nvidia.com,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 06/21] dt-bindings: tegra: Convert Tegra PMC bindings
 to YAML
Message-ID: <20200113223011.GA18406@bogus>
References: <1578457515-3477-1-git-send-email-skomatineni@nvidia.com>
 <1578457515-3477-7-git-send-email-skomatineni@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1578457515-3477-7-git-send-email-skomatineni@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 7 Jan 2020 20:25:00 -0800, Sowjanya Komatineni wrote:
> This patch converts text based Tegra PMC bindings document to YAML
> schema for performing dt validation.
> 
> Tested-by: Dmitry Osipenko <digetx@gmail.com>
> Reviewed-by: Dmitry Osipenko <digetx@gmail.com>
> Signed-off-by: Sowjanya Komatineni <skomatineni@nvidia.com>
> ---
>  .../bindings/arm/tegra/nvidia,tegra20-pmc.txt      | 300 ------------------
>  .../bindings/arm/tegra/nvidia,tegra20-pmc.yaml     | 340 +++++++++++++++++++++
>  2 files changed, 340 insertions(+), 300 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-pmc.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-pmc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
