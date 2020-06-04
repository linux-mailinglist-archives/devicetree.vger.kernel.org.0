Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88FFB1EEE21
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2020 01:09:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725926AbgFDXJ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jun 2020 19:09:29 -0400
Received: from mail-il1-f195.google.com ([209.85.166.195]:45026 "EHLO
        mail-il1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725863AbgFDXJ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Jun 2020 19:09:29 -0400
Received: by mail-il1-f195.google.com with SMTP id i1so6559016ils.11
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2020 16:09:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=yYPBulhrt5+j3gZ6UOPsWCTsIiSD9443w1u0FFugCwI=;
        b=K9LeB/xq+UhZ4tgzNmKTBeCq9m/iN/yKg1vILOzXvnN+k+iNVfNIPgSstzH1KvosA8
         GzRCtOpdTncZCNyTyi1xtbOii1LHm2HdQuEOVRnM4lK0ptcltVlmXLLW8lewpjuVOiR7
         DxhRSXA+KjXiy/0ePH8ZwFtHr+nY2HyCYkF7CCnJ3yXGbnhY0sqBuUj81xtuYNTmNx7Y
         QqOXYUe9EGy2kxUqlH3ZSi70pIaMb0jej6ztHnmTVYgYPBD/7PI1D5G/stxSpWo/FxYw
         Rw24hzmlxODZynk+cYjyI15Rw+gMInjcrFxRmt5QUkbK+MCnzEIl+aVe/XXLPe5ax/nK
         SnIw==
X-Gm-Message-State: AOAM532zeVKvkMvIYL5lBtmkJqUvO3HfcJD9jeH3piKn0qHUBJafbeba
        cLLhgIBKWSs/q55K+dA2lQ==
X-Google-Smtp-Source: ABdhPJz0xvfJ6BAoe8r3FFbzotTCpm3rEqCy3dakyBL+n5Px5TUd4cVn4xkeEp1XOa2Kt3yYWNYdPw==
X-Received: by 2002:a92:d984:: with SMTP id r4mr6136951iln.302.1591312168185;
        Thu, 04 Jun 2020 16:09:28 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id v20sm2168407ilc.1.2020.06.04.16.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 16:09:27 -0700 (PDT)
Received: (nullmailer pid 19307 invoked by uid 1000);
        Thu, 04 Jun 2020 23:09:26 -0000
Date:   Thu, 4 Jun 2020 17:09:26 -0600
From:   Rob Herring <robh@kernel.org>
To:     Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Cc:     marex@denx.de, kernel@collabora.com, michal.simek@xilinx.com,
        laurent.pinchart@ideasonboard.com, xuwei5@hisilicon.com,
        robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/4] dt-bindings: drm: bridge: adi, adv7511.txt:
 convert to yaml
Message-ID: <20200604230926.GA19232@bogus>
References: <20200601063308.13045-1-ricardo.canuelo@collabora.com>
 <20200601063308.13045-5-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200601063308.13045-5-ricardo.canuelo@collabora.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 01 Jun 2020 08:33:08 +0200, Ricardo Cañuelo wrote:
> Convert the ADV7511/11w/13/33/35 DT bindings to json-schema. The
> original binding has been split into two files: adi,adv7511.yaml for
> ADV7511/11W/13 and adi,adv7533.yaml for ADV7533/35.
> 
> Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
> ---
>  .../bindings/display/bridge/adi,adv7511.txt   | 143 -----------
>  .../bindings/display/bridge/adi,adv7511.yaml  | 231 ++++++++++++++++++
>  .../bindings/display/bridge/adi,adv7533.yaml  | 175 +++++++++++++
>  3 files changed, 406 insertions(+), 143 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/bridge/adi,adv7511.txt
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/adi,adv7511.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
