Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 369DD690FA0
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 18:55:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229886AbjBIRzU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 12:55:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229912AbjBIRzS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 12:55:18 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D10BA611D3
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 09:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1675965267;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=iWmHhHrlFcrfX0liIBaTbm4WQumXe+aAPuhg0kV7U5w=;
        b=BjDMvBX0kBy/PpS/DRXLX/Z554bGFqq86nNNtT7dNederou9EUAlhBM7wmVsOIo00+BiuK
        dxH7aN03najbtw53jhJGUiHx6LNMBDE4yohz81YBzDEdkMY1EXJKL98ZAugY6i3+IxK476
        S+dukXVzkGa/D9OZCaslIuARC67OIXQ=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-582-88LndIgnNMGjFd3ItyOv8A-1; Thu, 09 Feb 2023 12:54:26 -0500
X-MC-Unique: 88LndIgnNMGjFd3ItyOv8A-1
Received: by mail-qt1-f199.google.com with SMTP id c14-20020ac87d8e000000b003ba2d72f98aso1526775qtd.10
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 09:54:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iWmHhHrlFcrfX0liIBaTbm4WQumXe+aAPuhg0kV7U5w=;
        b=3SvXFY9q+dOJsYuo+NQES+2QxxhUXVvFGn/1xKRHEaR+wAztm04EEMo4fQszrmG8Yz
         /B+L6yR6ncOKHZDr1v1q7VqoYueYVXwoOhbw/8mGlLZOVHrh60Ito4GObx8SGmz+WDMv
         aqpGWqMap7Qa2bx3ZWNLKfpYq5uPjkP1YgF36hJARt9iZWHSqiA1609X8RlF628w81F8
         DhrVJudJ6V/boD+to9XMTR2EXPlzlU7KgQ55jPpIcks8PxFMGIjZyJ5a3OyRMgi9nb+i
         P3aV8yYT3S6Xqh8aHGGshpwTdJqhQcbsk5tiWlA3D4cgHKZgP06oru9KS2OHDGGXubFt
         pkAw==
X-Gm-Message-State: AO0yUKWZlRMLR+N/t77nJ0VYHiL47aunprSiFy9B/YFVZ0grWRD8Xyry
        quBURlB+41Ir/ZcKseaVKShVDvyTuRG4GKFPCyBPu+1O8N1kzLCr3rwBcJKBDe9dzmg8fNSfe+G
        edV2NBrajP/dYcWuk4kx73g==
X-Received: by 2002:a05:622a:15d6:b0:3b8:2602:9a35 with SMTP id d22-20020a05622a15d600b003b826029a35mr16919028qty.52.1675965266417;
        Thu, 09 Feb 2023 09:54:26 -0800 (PST)
X-Google-Smtp-Source: AK7set/+rx+Cayi7SmGL5gCWRNZyS33BKhGJK4OJ/W0EcrerxiGF4DtqkTA46DnNUHBs/xStt+uzcg==
X-Received: by 2002:a05:622a:15d6:b0:3b8:2602:9a35 with SMTP id d22-20020a05622a15d600b003b826029a35mr16919012qty.52.1675965266216;
        Thu, 09 Feb 2023 09:54:26 -0800 (PST)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id a21-20020ac84355000000b003bb764fe4ffsm1740735qtn.3.2023.02.09.09.54.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 09:54:25 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:54:25 -0500
From:   Eric Chanudet <echanude@redhat.com>
To:     Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v2 1/3] soc: qcom: smem: update max processor count
Message-ID: <20230209175425.kevrdvjf5zno5edb@echanude>
References: <20230209095753.447347-1-brgl@bgdev.pl>
 <20230209095753.447347-2-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230209095753.447347-2-brgl@bgdev.pl>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 09, 2023 at 10:57:51AM +0100, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Update max processor count to reflect the number of co-processors on
> SA8775P SoCs.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  drivers/soc/qcom/smem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Eric Chanudet <echanude@redhat.com>
Tested-by: Eric Chanudet <echanude@redhat.com>

-- 
Eric Chanudet

