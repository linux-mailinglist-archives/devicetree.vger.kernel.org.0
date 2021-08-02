Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A80143DD757
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 15:39:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234029AbhHBNkB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 09:40:01 -0400
Received: from mail-io1-f44.google.com ([209.85.166.44]:46628 "EHLO
        mail-io1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233742AbhHBNkA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Aug 2021 09:40:00 -0400
Received: by mail-io1-f44.google.com with SMTP id z7so19451841iog.13
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 06:39:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=wQWG6C+/bJD52kYYkLGDWnROUo6h5NbI01yufBYyFP4=;
        b=KK6JSTkQ9mNT2OE2ZMs8yOgME7X/SbnDzxqrpO/v7ubzBCTBuEBJzWm2FCOHfof/f0
         /EAThw2bDqeGc4cQCssRR3kIkoqGArJYO65pvsYo29k1Id9Vu/UkMQHFSrAMvPim+X6f
         PfTd+xwQwaj0WjXGzqIKucLz43xPeqCcry/pEGzAeHANhIwYekNLddW03GtbsxaK5hI+
         2lAigzTfvT2BlC7mZaRZwY3RXMlPOONmtSBa9tmVG+0tkJBA4IIiG2jpew/OMBduYu+G
         wh/XQFH/1K61JWq6YDWzmvhWSSL409Ygp3vKhwKahhIgGtFUQqTPDfUdLvbKwDlOGKsU
         N+dA==
X-Gm-Message-State: AOAM5336N7W8CDbqLYa2kR971LRZ1pNtFdKkQM5mQnf1OUBF/IQ1yRxk
        UbHuXfddtnXwOPinkhbfoA==
X-Google-Smtp-Source: ABdhPJzSxOv3oKdACMK8NKW42LCfv4rEJ9FvV+25JYgxEicbQufmp6OjCN+8+LUj0js3Wqw4lkdLAQ==
X-Received: by 2002:a6b:e417:: with SMTP id u23mr1057682iog.91.1627911590237;
        Mon, 02 Aug 2021 06:39:50 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id z11sm7007920ioh.14.2021.08.02.06.39.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Aug 2021 06:39:49 -0700 (PDT)
Received: (nullmailer pid 918768 invoked by uid 1000);
        Mon, 02 Aug 2021 13:39:43 -0000
From:   Rob Herring <robh@kernel.org>
To:     Matt Johnston <matt@codeconstruct.com.au>
Cc:     Wolfram Sang <wsa@kernel.org>, devicetree@vger.kernel.org,
        Jeremy Kerr <jk@codeconstruct.com.au>
In-Reply-To: <20210802040458.334732-3-matt@codeconstruct.com.au>
References: <20210802040458.334732-1-matt@codeconstruct.com.au> <20210802040458.334732-3-matt@codeconstruct.com.au>
Subject: Re: [RFC PATCH 2/2] dt-bindings: net: Add mctp-i2c bus-attach property
Date:   Mon, 02 Aug 2021 07:39:43 -0600
Message-Id: <1627911583.098664.918767.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 02 Aug 2021 12:04:58 +0800, Matt Johnston wrote:
> Allows attaching multiple child busses in a mux topology
> to an mctp-i2c instance on the root bus. In general I2C
> slave mode does not make sense for mux busses, but the MCTP
> request/response protocol means the the root can switch
> between child muxes for incoming I2C messages.
> 
> Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
> ---
>  .../devicetree/bindings/net/mctp-i2c.yaml     | 42 +++++++++++++++++--
>  1 file changed, 38 insertions(+), 4 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/net/mctp-i2c.example.dt.yaml:0:0: /example-0/i2cmux0: failed to match any schema with compatible: ['i2c-mux-gpio']
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1512253

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

