Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7021EDB6A2
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 20:56:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406971AbfJQS4v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 14:56:51 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:40510 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406984AbfJQS4v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 14:56:51 -0400
Received: by mail-ot1-f67.google.com with SMTP id y39so2820895ota.7
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 11:56:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3Fc38+M9QiuJWJ5bSxWUqm/GfDV9tM6bLCfP5yDAQu4=;
        b=Lyo3BVFPkvWwwkuxHjDZ50UchAHWGNmHlHC039bP6n5CWWiw4UUwgE6GYKEyrY/mUG
         RBhpWp6fZhy+J7zmBcKM55WCyJ7t2/5Zi6xAMhJ1VOgqW7vWSKzQNP4474/+9C34MehK
         HUgAwQMpPB4iCmw/iMToHt3QoBRUbg8xlTxVKYIi/Sgc/rcXVDeQJaqdP5Sr5c7y+gV7
         AbzXL2VluWcnivDDhOsd9YZPc4lxsnNx5FyzF+PqN9v9t4JnxcSe3z/nTawHnd6bYcuH
         eZZ5bVVPZkApDBHKCUWDmUj02Gos1MAwnOqdBhrP0ftiqOgl0FdhnkLfR1MozG1tbw7m
         nQyA==
X-Gm-Message-State: APjAAAVBMVL9JZb4tCEuvEsECBdaGr4QSBZM5Sl7JPRXM5dntb9jU+Wz
        6CUZ0XaW+eWJ1wuvZMxUehToF5w=
X-Google-Smtp-Source: APXvYqznvoEPT7Cp4jUGuXvKWaDvvH7w8OzZ0eUlLqQksAYg2hD6Nzt4mUva2/kQnxpZohuhBld+Tg==
X-Received: by 2002:a05:6830:1e59:: with SMTP id e25mr4338739otj.340.1571338610458;
        Thu, 17 Oct 2019 11:56:50 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 81sm824363oth.53.2019.10.17.11.56.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2019 11:56:49 -0700 (PDT)
Date:   Thu, 17 Oct 2019 13:56:48 -0500
From:   Rob Herring <robh@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     heiko@sntech.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: ARM: rockchip: Add Beelink A1
Message-ID: <20191017185648.GA29049@bogus>
References: <82324d17b770fa8ea189fa708490d2c8c0c9290e.1571090991.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <82324d17b770fa8ea189fa708490d2c8c0c9290e.1571090991.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 14 Oct 2019 23:19:04 +0100, Robin Murphy wrote:
> Add a binding for the RK3328-based Beelink A1 TV box.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
