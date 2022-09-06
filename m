Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43C325AEE95
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 17:22:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233342AbiIFPWJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 11:22:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233325AbiIFPVw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 11:21:52 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8DAF97D4A
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 07:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1662474757;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=UR3tpVQB87hjnz6CIQkDKO5srhiUjCJi4qcya16w4tU=;
        b=FHt79uDPVMK+vHAcjHzMZe5OsOoUwXPpY7E9JwY6e1Ea81wgKT3CtyOWfMrDEj5Z0GBFf9
        nl3dSqw9I69sZksCnOz5DRxv2Yx7E7bUx6HC/ttwGfZEDFjwiXkXCnUK2eQQq0aJ8eENQj
        t95en0OviA/hboK5XdShec9V12mcSCs=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-231-3ql2IwT_NWiN3Ka_kz4iZA-1; Tue, 06 Sep 2022 10:32:34 -0400
X-MC-Unique: 3ql2IwT_NWiN3Ka_kz4iZA-1
Received: by mail-qt1-f198.google.com with SMTP id z10-20020a05622a124a00b003445680ff47so9126816qtx.8
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 07:32:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=UR3tpVQB87hjnz6CIQkDKO5srhiUjCJi4qcya16w4tU=;
        b=NXtWqmHNegrapXn1Lg5zwzLnH3C03QYM+sp3jMB2B3dPICep/IVsLP3KGVrtZIaKmK
         uOanEi0DAYMdTNgwWSU9so94MH+lDAaUqVcd1EV/DHY9tbZKMXR4xnFGHegmRczIgBze
         vFJpLgAdzk4MUwZNXd8su24tOLXZ62iUyv0KIp11ahqPXSlq9aViHZ8AXRyvTIxHfqNs
         Qp28SW9WmZNH6NQFsLgufPqfidFnm4RddUfYsxaCtpLdeFFdbDe296A1G5e5K37omW7+
         yroMAjmUUoyenhBvr8/9k+0jXFdKTYtD1kj/fqq5D/MtNRY/CAxOVsTHkC+GHhqsq4jN
         ecpA==
X-Gm-Message-State: ACgBeo0Bv99ApTBsrL4tvM+h3P3Ex9q2GcoiVltHjW8Y9rgO46RiMD6R
        XIGtIBspg8z5YKhxs3CUFbRjj0dRQajfVa4hm/V7bEDN6pLvURABd71mjj4CIV+5J7hUjLTRG1N
        bdE0AEdPR8WJdewSMW0izbQ==
X-Received: by 2002:a05:620a:1902:b0:6b8:d90e:cef7 with SMTP id bj2-20020a05620a190200b006b8d90ecef7mr35967910qkb.131.1662474753941;
        Tue, 06 Sep 2022 07:32:33 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4yqmWdCMcB91qR0ZPYtY1lNOGF4Baa+YL8OcijdvG/VE2V8+OrHjcjCVGoCtYu6aw/EYDGQw==
X-Received: by 2002:a05:620a:1902:b0:6b8:d90e:cef7 with SMTP id bj2-20020a05620a190200b006b8d90ecef7mr35967879qkb.131.1662474753663;
        Tue, 06 Sep 2022 07:32:33 -0700 (PDT)
Received: from halaneylaptop ([2600:1700:1ff0:d0e0::a])
        by smtp.gmail.com with ESMTPSA id r3-20020ae9d603000000b006af0ce13499sm11260719qkk.115.2022.09.06.07.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 07:32:33 -0700 (PDT)
Date:   Tue, 6 Sep 2022 09:32:31 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        dianders@chromium.org, johan@kernel.org
Subject: Re: [PATCH 1/3] regulator: dt-bindings: qcom,rpmh: Use
 additionalProperties
Message-ID: <20220906143231.4xqg43uz2emvbe72@halaneylaptop>
References: <20220902185148.635292-1-ahalaney@redhat.com>
 <20220902185148.635292-2-ahalaney@redhat.com>
 <33c19838-2e44-2164-11c7-b14be5908809@linaro.org>
 <a10fa048-2ccc-d946-986c-c00a02d6fd71@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a10fa048-2ccc-d946-986c-c00a02d6fd71@linaro.org>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 05, 2022 at 06:53:23PM +0200, Krzysztof Kozlowski wrote:
> On 05/09/2022 18:45, Krzysztof Kozlowski wrote:
> > On 02/09/2022 20:51, Andrew Halaney wrote:
> >> Right now, running make dt_binding_check results in this snippet:
> >>
> >>     /mnt/extrassd/git/linux-next/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml: 'additionalProperties' is a required property
> >>             hint: A schema without a "$ref" to another schema must define all properties and use "additionalProperties"
> >>             from schema $id: http://devicetree.org/meta-schemas/base.yaml#
> >>       SCHEMA  Documentation/devicetree/bindings/processed-schema.json
> >>     <snip..>
> >>     /mnt/extrassd/git/linux-next/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml: ignoring, error in schema:
> >>
> >> Which results in the schema not being properly evaluated. Swap out
> >> unevaluatedProperties which doesn't seem to be doing anything for
> >> additionalProperties.
> > 
> > unevaluatedProperties were required due to usage of defs-allOf
> > (ba5d99609a5e ("regulator: dt-bindings: qcom,rpmh: document supplies per
> > variant")
> > ).
> > 
> > Are you sure that it works correctly with additionalProperties?
> > 
> > Judging by errors it doesn't....
> 
> What's more - I cannot reproduce that error (latest released dtschema)...
> 

Ugh, I thought maybe I had ran into something here that was only in
linux-next, but no. I've had my environment borked the whole time I was
working on this series. So sorry about that.

I'll send a v2 once I rework things with my environment working
properly. Your comments here make sense to me -- unevaluatedProperties
makes sense here based on what I see in the example binding... so this
patch and the next will get dropped entirely.

Thanks,
Andrew

