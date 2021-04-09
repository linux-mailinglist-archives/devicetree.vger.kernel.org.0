Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23CFE35A0F7
	for <lists+devicetree@lfdr.de>; Fri,  9 Apr 2021 16:26:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232884AbhDIO0n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Apr 2021 10:26:43 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:39518 "EHLO
        mail-oi1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231756AbhDIO0n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Apr 2021 10:26:43 -0400
Received: by mail-oi1-f180.google.com with SMTP id i81so5931321oif.6
        for <devicetree@vger.kernel.org>; Fri, 09 Apr 2021 07:26:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/V0AD0mPht0OQgtu30DwdKwdwaqGe9FlFaxJOL8CjYw=;
        b=LEZisN22hiKw+7kMyVEJNxGkm7S4Dohx3wU2bhb1oUP0TWp5Gl9hwoZ5Nk2P0gRE4l
         VoGDEj+5XfwkS7Fh6RHrYsRANOLVHDBpJBmsdTOG7mAQnPmM8T5EWLSkSPJ2kPvw+0ni
         PXLTgFb11PcezEHO29ZKs0chmYUOp0jtDEWAWHk74CjFhClSHwwf61pgj/NrHS/puoE6
         zTqGEy9hau5CYrzMKnrQkgH6wxb8eAZrxMkx7ZraHjRhKGiBWa7tLwuC8RY8A/V0vcbK
         VXjz5hKwG+6ncyEVD9c9MjjpWj44+UJy4dcAyqSK2uGNb7gz8AjML8IyuSdUIwwGquG2
         W1BA==
X-Gm-Message-State: AOAM532tPvXdGW/HzIq0SLNmF764OYt04RrvtNQzOMyg82FICxOvBecn
        9yhExrrCILr+x5aws+b6xM3Huk4T9w==
X-Google-Smtp-Source: ABdhPJx1klcJKlCMw5mfZ1cYy4R2fXfN8qB/7SCRUjzSURywC9WeTw9sZY/O2uoXDRoNAVkcxl3HKg==
X-Received: by 2002:aca:db05:: with SMTP id s5mr9894762oig.134.1617978388992;
        Fri, 09 Apr 2021 07:26:28 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id i3sm550160oov.2.2021.04.09.07.26.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 07:26:27 -0700 (PDT)
Received: (nullmailer pid 3599373 invoked by uid 1000);
        Fri, 09 Apr 2021 14:26:26 -0000
Date:   Fri, 9 Apr 2021 09:26:26 -0500
From:   Rob Herring <robh@kernel.org>
To:     Yunus Bas <y.bas@phytec.de>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org, daniel@ffwll.ch,
        airlied@linux.ie, thierry.reding@gmail.com, sam@ravnborg.org
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add EDT ETMV570G2DHU
Message-ID: <20210409142626.GA3599344@robh.at.kernel.org>
References: <20210331181317.464926-1-y.bas@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210331181317.464926-1-y.bas@phytec.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 31 Mar 2021 20:13:16 +0200, Yunus Bas wrote:
> The Emerging Display Technology ETMV570G2DHU is a 5.7" VGA TFT panel.
> Add it to the list of compatibles.
> 
> Signed-off-by: Yunus Bas <y.bas@phytec.de>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml        | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
