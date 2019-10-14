Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B33A8D652F
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 16:30:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732356AbfJNOao (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 10:30:44 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:40456 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731121AbfJNOao (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 10:30:44 -0400
Received: by mail-ot1-f66.google.com with SMTP id y39so13959689ota.7
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2019 07:30:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HR3huzkuSWxPZVSOCKU/OYZ7oGhSKM9tpzzRco69LJE=;
        b=EBBKd32fRDMXEtmyTfuBQ3ofPByGIWqFSb8lqKYmyG11vB6n8tC9fGIr8sW8CoNvJ8
         U6hn1ie3j3JlZ8oxwZ+qirWpoyOZ8SdN1RuHrFu1iX247UH5mGC548UQZF8zUFwug0Wx
         /HxLROHKgTu1kone+UfkjgeE3h2llzjh8xzs7drc75XZhYFFqrq7UJCVarSnv27ruB9O
         GMJW1Rh3FmMezosKHiAG8L4Z+h9QTvUz1i7przn6iwyTtLJlebXKz77bzEJ1mHkAUxCE
         Imf4lqP9Iy6j2P3R9+gslYERbmJ90nJ8WqgF1X6Fa651mFrPikBfJHorxbeqqcp7F8Yd
         aEzw==
X-Gm-Message-State: APjAAAUmEOXeKjkgUS8CkgkU5hiKypG+wAXA7MOy67Pyrb3w9vA6wWLy
        NB1LBOUgFLtY4WcJlLMy+A==
X-Google-Smtp-Source: APXvYqw9ImRBqzlINO9s91H2FSHo+R+tT1+eHKHHA+suePeHiQnrNqr2rvcwLGTi+eKpR/d9WdHdEQ==
X-Received: by 2002:a9d:70c3:: with SMTP id w3mr18187499otj.246.1571063443729;
        Mon, 14 Oct 2019 07:30:43 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id u141sm5553575oie.40.2019.10.14.07.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 07:30:42 -0700 (PDT)
Date:   Mon, 14 Oct 2019 09:30:41 -0500
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     broonie@kernel.org, robh@kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, spapothi@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, vkoul@kernel.org,
        lgirdwood@gmail.com, bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v8 2/3] dt-bindings: ASoC: WSA881x: Add missing
 #sound-dai-cells
Message-ID: <20191014143041.GA5564@bogus>
References: <20191011152446.5925-1-srinivas.kandagatla@linaro.org>
 <20191011152446.5925-3-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191011152446.5925-3-srinivas.kandagatla@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 11 Oct 2019 16:24:45 +0100, Srinivas Kandagatla wrote:
> As this codec now exposes dai, add missing #sound-dai-cells.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
