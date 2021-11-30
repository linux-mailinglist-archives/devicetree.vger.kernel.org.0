Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 450A14628E6
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 01:10:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230473AbhK3ANz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 19:13:55 -0500
Received: from mail-ot1-f41.google.com ([209.85.210.41]:35712 "EHLO
        mail-ot1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbhK3ANz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 19:13:55 -0500
Received: by mail-ot1-f41.google.com with SMTP id x43-20020a056830246b00b00570d09d34ebso27888304otr.2
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 16:10:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=BfT/WXu+oBPn90BqESxoluCQ1NS0bMYxKosATh1kf4c=;
        b=GgM6IetCHoqRSmxJ+VJyfeho+QdEot3jL8bJBtjCnNmc/Rxg7KtxQ7KjBSb8+xg4Uw
         YqT+vn+evDiJDzNgV71e2QTgj2zg/BmLNRth0g7CWq3ZZOVfDXJnxs9yzf2rFFm9FVdS
         hZsMOAa6PIgQEFZFVZAhiJ4qEF/ouAzkP02xbgGwgWfU4XMQKMQsPSu0hzIekgHSMLf0
         bR32kdYVYkE9o1y6rYKLjuoo2vlatAHGtlhdh+hbbV/ONoDcsqgaic7zMTK7ugvVM6j4
         cEQmGbVW4xdY870IhC9yXNEhQE/4ZLG5QWjw5oZTo72ltefiVXdppfSl6t6UA6FFnSPW
         N7WA==
X-Gm-Message-State: AOAM532bbv6vUTqGS/wokkkrvLqLGDOnvFRxXnJCLSItne9FTDlqgsf9
        jZxJMbQKcjn84/6szN8tmkZo+Kp48UgF
X-Google-Smtp-Source: ABdhPJztnm7QqJ7ifzj6MRk5SqJtMNEAD0q+7CcbJ3DOuN6q6VkYTx1+zVsSpQaR+kiuFw2WnWvXew==
X-Received: by 2002:a9d:2077:: with SMTP id n110mr46214184ota.261.1638231036370;
        Mon, 29 Nov 2021 16:10:36 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id s9sm2998557otg.42.2021.11.29.16.10.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 16:10:35 -0800 (PST)
Received: (nullmailer pid 868068 invoked by uid 1000);
        Tue, 30 Nov 2021 00:10:35 -0000
Date:   Mon, 29 Nov 2021 18:10:35 -0600
From:   Rob Herring <robh@kernel.org>
To:     Andrei Kartashev <a.kartashev@yadro.com>
Cc:     joel@jms.id.au, andrew@aj.id.au, devicetree@vger.kernel.org,
        openbmc@lists.ozlabs.org
Subject: Re: [PATCH v2 1/2] dt-bindings: vendor-prefixes: add YADRO
Message-ID: <YaVr+2iGzeWNYF0G@robh.at.kernel.org>
References: <20211119120057.12118-1-a.kartashev@yadro.com>
 <20211119120057.12118-2-a.kartashev@yadro.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211119120057.12118-2-a.kartashev@yadro.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 Nov 2021 15:00:56 +0300, Andrei Kartashev wrote:
> Add vendor prefix for YADRO (https://www.yadro.com/)
> 
> Signed-off-by: Andrei Kartashev <a.kartashev@yadro.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
