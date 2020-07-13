Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51F6B21DE8D
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2020 19:22:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730533AbgGMRWj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jul 2020 13:22:39 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:38409 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730525AbgGMRWi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jul 2020 13:22:38 -0400
Received: by mail-io1-f65.google.com with SMTP id l1so14334158ioh.5
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2020 10:22:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1m7E1al74FiwjOCPV9ya//li1zLW6l3Va8M6YjqKNsA=;
        b=lbgmW6w70jVpT5Ag/kTRWdPF1acZGDjedbgNW9PlaDOyRsWBeRJorD7O7KvHSsQyzI
         VqzvXpUE6bq+OxNH+m6QQWYl7LXp3Dz52H8L8D8DRw6P2rC8PGPrdtDDn3nYbzekUX7q
         gakVVmEx4JO+Z9RJRxk98Na1KstQxTgebPTBVHpGNhMOoWkx8/1WLREyleSLFlblp5hM
         QWs+cee8tZ5qWdAmvJmi7BGqPvStIku6R9JRprUm4NPFx8s6LI5Z7gbJnoioWjWIEXXi
         XHkwUu0CFKV5jP5N0LKIDFvGETe1jg21ce21KnnY1vNxV6ViO8lBj45/FfEihoxsj4vV
         uCAw==
X-Gm-Message-State: AOAM531fzJcbBSav5erEvCL2m3Wgvi4Iex7zgpz23+yP+XMrda1LTCjr
        ehZc9nWuoSCpg7EqzUtc/A==
X-Google-Smtp-Source: ABdhPJzGD3SBqu4CNvISWLN0JnO5sVo5p4nKCxlJTXyz/UMAUOtXcowasbU96NbxjYVQM6b67v09Xg==
X-Received: by 2002:a05:6638:11cb:: with SMTP id g11mr1249228jas.14.1594660957984;
        Mon, 13 Jul 2020 10:22:37 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id h5sm8309217ilq.22.2020.07.13.10.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 10:22:37 -0700 (PDT)
Received: (nullmailer pid 412575 invoked by uid 1000);
        Mon, 13 Jul 2020 17:22:36 -0000
Date:   Mon, 13 Jul 2020 11:22:36 -0600
From:   Rob Herring <robh@kernel.org>
To:     Parthiban Nallathambi <parthiban@linumiz.com>
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org,
        devicetree@vger.kernel.org, s.hauer@pengutronix.de
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: fsl: Add MYiR Tech boards
Message-ID: <20200713172236.GA412524@bogus>
References: <20200713072320.5567-1-parthiban@linumiz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200713072320.5567-1-parthiban@linumiz.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Jul 2020 09:23:19 +0200, Parthiban Nallathambi wrote:
> Add entries for MYiR Tech imx6ULL eval boards.
> 
> Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
> ---
> 
> Notes:
>     Changelog v4:
>     - none
> 
>     Changelog v3:
>     - use only 'eval' as compatability. remove inclusion of
>     memory type (nand/emmc) from compatability
> 
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
