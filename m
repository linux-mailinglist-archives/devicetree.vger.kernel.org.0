Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25CA63EBBA1
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 19:45:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229853AbhHMRpt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 13:45:49 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:35656 "EHLO
        mail-ot1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229607AbhHMRpp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 13:45:45 -0400
Received: by mail-ot1-f48.google.com with SMTP id r19-20020a0568301353b029050aa53c3801so12950065otq.2
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 10:45:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/tRJJqRyWJqAafGX76y4iwOE1vDparJzpmZe1NF8mMQ=;
        b=YMogNfydo1odFGmau6KsuQvAflI3HtZNMzE8EtJti4M47vRScDDLhqAKOZArtySdIe
         cFY2XS8Jx570hKOTs7hLtw/cBhVaeq2KH+cTFHgG4TgedW5c5TnqXhbh3s3CyUDSSr9P
         n14ooHKVkLC0YNVLQGgqwikansPY5LGYO+LzCHBod8WypN8U3TO6J/tdsZjRC0a6+HFU
         kXMuPjHwWuwh7cgxlqEWvpEpzDbFKvIWHI+edqTEUGjIfN+tHHjke+ULTGGMOL0ZE+GU
         2Mhb+8sMJhBwWerHPVJABAPqBTlv8GuSOQRMmqlP6dQ1evyxbF9rD42XXUMM6KMeR1uX
         x80Q==
X-Gm-Message-State: AOAM530SmylRsP7KDYPOvAc5GTLgQlDdbCVdLDttg0ImW1GndvlTo8UR
        dz9UE9Xbp7x4qdXuIgxQTQ==
X-Google-Smtp-Source: ABdhPJyovJzS1FxaUL0k/lw2dKsfYXld3XGCueBU0/vxcNy8I2elUWEkepjsmVlUmRqcFvjcJHv7rg==
X-Received: by 2002:a9d:5f0e:: with SMTP id f14mr3008794oti.107.1628876718430;
        Fri, 13 Aug 2021 10:45:18 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z12sm434094otj.1.2021.08.13.10.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 10:45:17 -0700 (PDT)
Received: (nullmailer pid 3743626 invoked by uid 1000);
        Fri, 13 Aug 2021 17:45:16 -0000
Date:   Fri, 13 Aug 2021 12:45:16 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ezequiel Garcia <ezequiel@collabora.com>
Cc:     Kever Yang <kever.yang@rock-chips.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        Peter Geis <pgwipeout@gmail.com>,
        Johan Jonker <jbx6244@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: gpu: mali-bifrost: Add RK3568
 compatible
Message-ID: <YRavrOQTnvU5amqZ@robh.at.kernel.org>
References: <20210805025948.10900-1-ezequiel@collabora.com>
 <20210805025948.10900-3-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210805025948.10900-3-ezequiel@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 04 Aug 2021 23:59:46 -0300, Ezequiel Garcia wrote:
> The Rockchip RK3568 SoC has a Bifrost Mali-G52 GPU,
> add a compatible string for it.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!
