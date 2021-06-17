Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE9723AB65D
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 16:46:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231684AbhFQOsu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Jun 2021 10:48:50 -0400
Received: from mail-io1-f42.google.com ([209.85.166.42]:39840 "EHLO
        mail-io1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231434AbhFQOsu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Jun 2021 10:48:50 -0400
Received: by mail-io1-f42.google.com with SMTP id f10so3433434iok.6
        for <devicetree@vger.kernel.org>; Thu, 17 Jun 2021 07:46:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=x6IdEwBKiBUtJUwLTSGxbs60wgwZJL60UOT7ikRhPwA=;
        b=FXLnXtESt4gk/TL0TzNmeSsMqSQLKAn1H5dTtoXSsZaAoTAoX4DVLEZ17v5PpILpa+
         G20i5k8NyCj9y/2mt1Y3iWETHCjYc8gfrmwhA2lRNbPZS2VUbRoLO6A+8ZIUHfXeld1M
         mGLEGdzj03flE4JTGzzc77shbCHq9sewKrszhGHpgKYCw7F5O++IZI5DlA88MWNoCDCx
         DptGTvtzc3ow1FZG//g6iXMOWlHiOQU/hYMqWYC9YrGyXJjqxJbXm2rxs2ime/E+saUM
         PpxaW2/8GSYVgqz5+bWx6t3lWab9Bda2FbuyhOXjOm0kwoPT5+NTXXomFtbXS7XOqnJx
         s8/w==
X-Gm-Message-State: AOAM531QZqZ25yEojp3wlvoTuRMTUxDeG9ml+cc/2FUw1aBGPQJFtbIf
        Go+7WkCzYcbEBaaRHrlv+A==
X-Google-Smtp-Source: ABdhPJzSOyhFZ5TMJXuzbAMfAla1KVm1erC65BiV6zMEfDTf39W4zUwrnvTVgwIbL4+3wwXzgYwIpQ==
X-Received: by 2002:a05:6602:114:: with SMTP id s20mr4374208iot.98.1623941201028;
        Thu, 17 Jun 2021 07:46:41 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id b9sm2745586ilj.33.2021.06.17.07.46.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jun 2021 07:46:40 -0700 (PDT)
Received: (nullmailer pid 2197242 invoked by uid 1000);
        Thu, 17 Jun 2021 14:46:35 -0000
Date:   Thu, 17 Jun 2021 08:46:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Cc:     laurent.pinchart@ideasonboard.com, airlied@linux.ie,
        xuwei5@hisilicon.com, mcoquelin.stm32@gmail.com, marex@denx.de,
        alexandre.torgue@foss.st.com, daniel@ffwll.ch,
        michal.simek@xilinx.com, kernel@collabora.com,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [RESEND PATCH v4 3/3] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
Message-ID: <20210617144635.GA2197058@robh.at.kernel.org>
References: <20210615131333.2272473-1-ricardo.canuelo@collabora.com>
 <20210615131333.2272473-4-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210615131333.2272473-4-ricardo.canuelo@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 15 Jun 2021 15:13:33 +0200, Ricardo Cañuelo wrote:
> Convert the ADV7511/11w/13/33/35 DT bindings to json-schema. The
> original binding has been split into two files: adi,adv7511.yaml for
> ADV7511/11W/13 and adi,adv7533.yaml for ADV7533/35.
> 
> Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../bindings/display/bridge/adi,adv7511.txt   | 143 -----------
>  .../bindings/display/bridge/adi,adv7511.yaml  | 241 ++++++++++++++++++
>  .../bindings/display/bridge/adi,adv7533.yaml  | 184 +++++++++++++
>  3 files changed, 425 insertions(+), 143 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/bridge/adi,adv7511.txt
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/adi,adv7511.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml
> 

Applied, thanks!
