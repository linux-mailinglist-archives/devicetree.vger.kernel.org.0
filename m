Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C4C6484823
	for <lists+devicetree@lfdr.de>; Tue,  4 Jan 2022 19:56:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234565AbiADS4a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jan 2022 13:56:30 -0500
Received: from mail-ot1-f47.google.com ([209.85.210.47]:41717 "EHLO
        mail-ot1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234457AbiADS4a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jan 2022 13:56:30 -0500
Received: by mail-ot1-f47.google.com with SMTP id n17-20020a9d64d1000000b00579cf677301so7528931otl.8;
        Tue, 04 Jan 2022 10:56:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OxrLrLYOekPwxwAB4lIyWLc0ai47gDGk85Z/5gUV5rE=;
        b=rL0l4X1pEgBw7jx4lEOJraiA7EsLrgQ3ihQNL3SOkJn8lqQRbqsX8f1ocC9RVkcbdA
         f2mwwuNO0va4X/YwqB0ri+n6tLtBCTkBHjwTx1b8yJlszCFKYo6z1CZtNKPII9PcWJY8
         fl6m/6DOJb8mmyfNlQfoEkQ1wEHud1/5ifJ8XoL78F6QwLYk2noWZ20TdetHJ24faEZf
         WhklJlFPbutC4TGCRFEF5NiTOw2qRdnWVxctV0sS/gy9mfnNpyhMxlBQyHHj+U3ZKdmf
         xcrsTKeBCDwB1utQpV8+12NFuPC+uKgsX08SfGOStc1dvuWlPurI2WjU7FOUSB8W3Wl3
         Tx0g==
X-Gm-Message-State: AOAM5303WVe6XiMZAgZPGRM4ZevqVYMuwMmUSbhh+XTh7+swtCwvHsmU
        CEYBCuAPS8cALzGCnvNqdYh0Y3M5rw==
X-Google-Smtp-Source: ABdhPJwqSr9JGEdXNxcAN0qW8eQHw90M7IXzaT/jfdRzHLGtv1aKBU7AIZp+iuKDodw+ZY1gaW+AEw==
X-Received: by 2002:a9d:1ca7:: with SMTP id l39mr36583605ota.329.1641322589718;
        Tue, 04 Jan 2022 10:56:29 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id bh12sm10012731oib.25.2022.01.04.10.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jan 2022 10:56:29 -0800 (PST)
Received: (nullmailer pid 1209222 invoked by uid 1000);
        Tue, 04 Jan 2022 18:56:28 -0000
Date:   Tue, 4 Jan 2022 12:56:28 -0600
From:   Rob Herring <robh@kernel.org>
To:     Tony Huang <tonyhuang.sunplus@gmail.com>
Cc:     robh+dt@kernel.org, linux-kernel@vger.kernel.org,
        derek.kiernan@xilinx.com, gregkh@linuxfoundation.org,
        tony.huang@sunplus.com, devicetree@vger.kernel.org,
        dragan.cvetic@xilinx.com, arnd@arndb.de, wells.lu@sunplus.com
Subject: Re: [PATCH v6 1/2] dt-binding: misc: Add iop yaml file for Sunplus
 SP7021
Message-ID: <YdSYXJwKXxSk1JDH@robh.at.kernel.org>
References: <cover.1640836400.git.tonyhuang.sunplus@gmail.com>
 <f1acc53155bbc724db24d8957b0dc18b154461ba.1640836400.git.tonyhuang.sunplus@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f1acc53155bbc724db24d8957b0dc18b154461ba.1640836400.git.tonyhuang.sunplus@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 Dec 2021 20:51:44 +0800, Tony Huang wrote:
> Add iop yaml file for Sunplus SP7021
> 
> Signed-off-by: Tony Huang <tonyhuang.sunplus@gmail.com>
> ---
> Changes in v6:
>  -Modify incorrect name of gpio. Added wakeup-gpios pin for 8051.
> 
>  .../devicetree/bindings/misc/sunplus-iop.yaml      | 76 ++++++++++++++++++++++
>  MAINTAINERS                                        |  5 ++
>  2 files changed, 81 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/misc/sunplus-iop.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
