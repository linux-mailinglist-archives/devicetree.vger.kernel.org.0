Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 339184DDBD1
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 15:40:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237036AbiCROl4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Mar 2022 10:41:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233816AbiCROlz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Mar 2022 10:41:55 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72F33E0995
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 07:40:37 -0700 (PDT)
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 17E203F1A4
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 14:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647614436;
        bh=gDon0BP3FzcU+qjKqb9PY/sKgV2QZa/bB8WMrT1T2lk=;
        h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
         Content-Type:In-Reply-To;
        b=qjUTY41ZlzutsyDwOztCBPwiNbFZxN2DtsaKZ3P2QNWTfVEeSyPHcc3OHq1oFmHQr
         zMZQNk8k3SBkuMhaJmSiUGJOebSonWWDFg9GDt2zefyfHrgdMbk148FF3OeSMDjXGb
         9tjsmtZzjMFMpg+HvMzJX2NAp4rR6ZwwJjssf4fE9TVDks7A33JpjhXwqvydbPfyT0
         hjy/5p4ufNpoJsrOBdSrViOQDXvQYZqV8gsFR5UUK4HyJ8GgM6YUmykSZ+x55fVI1Q
         EafMeDnC993jg9/hckcqjFcJukClc8L+3UBKPcgKd689FdJfLrmjd6HjjDGAMPRNsV
         118WMJohzh48A==
Received: by mail-lf1-f69.google.com with SMTP id m13-20020a19520d000000b00443423ff116so2644359lfb.11
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 07:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=gDon0BP3FzcU+qjKqb9PY/sKgV2QZa/bB8WMrT1T2lk=;
        b=K/g2UySd8MbUwWJqCJVYn43CSWYvTprzAoUrm9yxrpK9NcYN5RbFpmmRBW1mY//kO0
         cs7uNatY9rdokCYSPR5R7ejZ2W2S0DzW2W/w1L1sWADGmXIzU9uehl/VZWy/WmPwZNEf
         JRtNucqQJTU1U4mpngqgzP8RZnYghgyYb+Wb/33kuE2F+gjoIym0GWmcxQ+4SncRHJIL
         U/yu4YWY9JJJjYW0GX7RyO/8tIGCNnV71Tk/ytPieyBF7GbF402aTIWNQ82bV0cCPgwZ
         JyjVetS22VNyvNbjPv3cSE15IuXG3OWjgJ+5lZVazUvvwlZHNlCvX1xMltxl4bg+Uof/
         HSKA==
X-Gm-Message-State: AOAM532K6NzZdgyH+0oN1k4JKarZIwbuuQsvR7bj5wivlkQ/93zvtZQN
        WBEmDVGYiA07yxDMoXqXXrp/EcJB6uttY5QN4L/5YJCCyb5gQFBGYGUnin16bAjnmiEauBJaSbN
        UpYNCmJ7K06Sqg/Qo6kfY88ZXYgKOUGuot/QgSrU=
X-Received: by 2002:a05:6512:2610:b0:448:27fc:a6ab with SMTP id bt16-20020a056512261000b0044827fca6abmr6165529lfb.117.1647614435307;
        Fri, 18 Mar 2022 07:40:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzge1+OMU6oDjlVzk/K5ztKRa1o5Wtl86/+yFtWC5zCXPcuXzvKr5+rXPtTdCr+kyJEgBjKCw==
X-Received: by 2002:a05:6512:2610:b0:448:27fc:a6ab with SMTP id bt16-20020a056512261000b0044827fca6abmr6165518lfb.117.1647614435027;
        Fri, 18 Mar 2022 07:40:35 -0700 (PDT)
Received: from krzk-bin (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.googlemail.com with ESMTPSA id p41-20020a05651213a900b00443fac7d6ffsm876979lfa.108.2022.03.18.07.40.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Mar 2022 07:40:34 -0700 (PDT)
Date:   Fri, 18 Mar 2022 15:40:31 +0100
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     hminas@synopsys.com, gregkh@linuxfoundation.org,
        robh+dt@kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: usb: dwc2: add compatible
 "intel,socfpga-agilex-hsotg"
Message-ID: <20220318144031.ap75e5sjk5fa6ghv@krzk-bin>
References: <20220125161821.1951906-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220125161821.1951906-1-dinguyen@kernel.org>
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 25, 2022 at 10:18:19AM -0600, Dinh Nguyen wrote:
> Add the compatible "intel,socfpga-agilex-hsotg" to the DWC2
> implementation, because the Agilex DWC2 implementation does not support
> clock gating.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  Documentation/devicetree/bindings/usb/dwc2.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
> index f00867ebc147..481aaa09f3f2 100644
> --- a/Documentation/devicetree/bindings/usb/dwc2.yaml
> +++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
> @@ -53,6 +53,7 @@ properties:
>            - const: st,stm32mp15-hsotg
>            - const: snps,dwc2
>        - const: samsung,s3c6400-hsotg
> +      - const: intel,socfpga-agilex-hsotg

This is confusing and wrong. Now the intel,socfpga-agilex-hsotg is
mentioned twice - with and without snps,dwc2. The DTS change in this
patchset added usage with snps,dwc2. The commit msg says it's
different, but is the difference incompatible?

Please clarify the AgileX HSOTG - is it compatible with snps,dwc2 or
not? Based on this the patch might need to be reverted (or changed).

Best regards,
Krzysztof

