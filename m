Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAD3B59ECEA
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 21:56:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230323AbiHWT4C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 15:56:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234201AbiHWTzo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 15:55:44 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BC2782879
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 12:03:45 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id CF44AB82041
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 19:03:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E7E5C433B5
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 19:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661281422;
        bh=F9ziUd8LuZA2I/1CWkPIzD5jpji3Vn0NIn1ylj0XvAE=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=M3f23WHFzwKRvmy4K+ic3hIVciZxKhVs3mA5dpjAwqthPT+XsIp4fFDSWDJ69i71R
         TJzntJ0hmJ6W6JXOPzqoYMKbmi+PqD7cocgM3wztzDNklmQSjie3R2fc//nwqNiU72
         52y48BVY1n4Kdt0cDvxoen+16QokiXJoXy8QlImzR3yiBUXxTm+IPGZor4VkBVDtMP
         KEozj6pLDudOYBFiFwGZwBXJ1gMcIaayNtCtl97TaTkEgJhCGGFyzv7/78OU+//ush
         MqpiAk5CzML93K6CBXVEtLlP2ERU3bzOMzjLfYapnBnwgS3nFoRzP70F/c8ibiKA5G
         1Lvq2gR2dYn2w==
Received: by mail-vs1-f42.google.com with SMTP id q67so6668443vsa.1
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 12:03:42 -0700 (PDT)
X-Gm-Message-State: ACgBeo2yW6rmvxkdnlnSUJNzMHiiIwkAlrpYRJbGke/7ixwDXH85fBU1
        kRVJk0D3X1f/9Tftd5Ee6FMJ5j0OkQnQkdZ82g==
X-Google-Smtp-Source: AA6agR6v8J6/5L4dKCTR/Zb6rAU0R/6poc71eiQxVAz/y104uR2eKprd7/t4JntOB15Q+xP0+neDEKb/sl3uJqApm8w=
X-Received: by 2002:a05:6102:3353:b0:38c:9170:a96b with SMTP id
 j19-20020a056102335300b0038c9170a96bmr10565199vse.26.1661281421372; Tue, 23
 Aug 2022 12:03:41 -0700 (PDT)
MIME-Version: 1.0
References: <60dc852a-a77d-cb0a-b8ee-2deef67d0b0c@linaro.org>
In-Reply-To: <60dc852a-a77d-cb0a-b8ee-2deef67d0b0c@linaro.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 23 Aug 2022 14:03:29 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLjAuDE1pga6uL5+SQhcthym-DLdEsiam=i7tRzPm4=3A@mail.gmail.com>
Message-ID: <CAL_JsqLjAuDE1pga6uL5+SQhcthym-DLdEsiam=i7tRzPm4=3A@mail.gmail.com>
Subject: Re: dt-validate issues with the oneOf/$ref/incomplete node
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 22, 2022 at 3:03 PM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Hi,
>
> Short story:
>
> If the dt schema file has a property with using oneOf/anyOf of several
> $ref references and the corresponding device node is incomplete and has
> status = "disabled", then the dt-validate would still validate the node
> against these schemas (and fail the validation as the node is incomplete).

For disabled nodes, we just try to filter out 'required' errors. I
think that's not handled here because there are multiple required
errors and we just see the 'oneOf' error.

>
>
> Long story:
>
>
> For quite a while I have been stumbling with the issue during
> refactoring the display/msm/mdss schema.
>
> The schema had the following part:
>
> patternProperties:
>    "^dsi-phy@[1-9a-f][0-9a-f]*$":
>      oneOf:
>        - $ref: dsi-phy-28nm.yaml#
>        - $ref: dsi-phy-20nm.yaml#
>        - $ref: dsi-phy-14nm.yaml#
>        - $ref: dsi-phy-10nm.yaml#
>        - $ref: dsi-phy-7nm.yaml#

The easiest solution here may be to just drop this. It is not a common
pattern. It does serve some purpose in that the node will have one of
the right compatibles, but otherwise this causes the schema to be
applied twice.


> Validating existing DT files against just
> 'DT_SCHEMA_FILES=display/msm/mdss' would work w/o errors. Validating
> against 'DT_SCHEMA_FILES=display/msm/dsi' would also validate w/o any
> issues. However specifying 'DT_SCHEMA_FILES=display/msm' (thus enabling
> both mdss.yaml and dsi-phy-*.yaml) would cause a long stream of
> "mdss@ae00000: dsi-phy@ae96400: 'oneOf' conditional failed, one must be
> fixed:" errors.

I would expect the oneOf error in all cases the schema with the the
oneOf is included by DT_SCHEMA_FILES value. Is that not the case in
the first case?

>
> For quite a while I failed to understand what was causing the issue
> until I found that the errors are reported against the _disabled_ device
> nodes which miss e.g. several -supply nodes. If I added the
> corresponding missing supplies (or removed the requirement to have the
> supply from corresponding .yaml) then the file would validate against
> mdss.yaml + dsi*yaml combo.
>
> Thus I suppose something goes wrong with the validation of disabled
> nodes against oneOf conditionals.
>
> --
> With best wishes
> Dmitry
