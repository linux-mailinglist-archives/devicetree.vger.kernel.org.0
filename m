Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98C305AF5CC
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 22:25:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229958AbiIFUZe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 16:25:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229938AbiIFUZc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 16:25:32 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D91E81697
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 13:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1662495930;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=uWq0DQ3f4X7MTaLrpOjEjqg4Wu5PCHE713Z5NmM6sFY=;
        b=OYKml+JIs4IDO0rhtUG/QMWzDYMD9Clsp54GEg/zOhkkcWhL9jj0VU0OZA5/X75vhzFGbC
        2uQ5bEhwtwY0nxMmLqhUyJN34bAK0QEIBGBoUO3RJuXEsEapUiUpPcDiB4BSM2QWt3dY3s
        FZE/eDZ4x6j1FEs8xiFKxgLZFxTx0Is=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-446-vIMSdsK6MU6HCUXNP5etnw-1; Tue, 06 Sep 2022 16:25:29 -0400
X-MC-Unique: vIMSdsK6MU6HCUXNP5etnw-1
Received: by mail-qk1-f200.google.com with SMTP id br15-20020a05620a460f00b006bc58c26501so10191375qkb.0
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 13:25:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=uWq0DQ3f4X7MTaLrpOjEjqg4Wu5PCHE713Z5NmM6sFY=;
        b=oUGSFSf8tVv5/khZV1pealrjxihJGFzwznDjANr/h0UZoZJ00sQUEXhTUt7wow7oIt
         2LVubCbq85W5WtzlChq01nWi/UVYAP6Rm1QNW9uQjlkLVISBe3ZUpyvsmSzD817A/l23
         NeQuECz1fI16CjQxCGRsw6805fyo0QHMUsGfvRMTON69AI0oALVptPMbrJ+ClorFB/n/
         Z5qiLdZDUXCfRJai1g7cOuqYehl4TCCTP+5piKkq2PsEYAILrsE81bXOUaDnWBnjcYSt
         VxAQU5fw7oPzbcIGsxlibI0kC7Qumr90CHeDlJtRISt1JUFIjbDYBpNwYLMAAgKHIyx6
         8Tcw==
X-Gm-Message-State: ACgBeo00R19ZmNjLmKsiZ7J0CIGrgwOHCW5qExo45uc0Ms1s172Va57+
        kwSfno/ogQ+s/K2bWbnMmw8UpfEUH10ajEcJYwhEtMRvKLe6cGzjawMuHdoHZ50Y9VRuL20vKDj
        kdHU7ZmgehhvRiDnfYeuNjA==
X-Received: by 2002:ac8:5b03:0:b0:343:679b:64f2 with SMTP id m3-20020ac85b03000000b00343679b64f2mr357918qtw.260.1662495928600;
        Tue, 06 Sep 2022 13:25:28 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4egzO6xt0SmhlP9DK65FMQdsts/oyfk4ZClfRpE6BDi9UEKa+ciSJbTyc7rql38ozwwMMnYQ==
X-Received: by 2002:ac8:5b03:0:b0:343:679b:64f2 with SMTP id m3-20020ac85b03000000b00343679b64f2mr357901qtw.260.1662495928385;
        Tue, 06 Sep 2022 13:25:28 -0700 (PDT)
Received: from halaneylaptop ([2600:1700:1ff0:d0e0::a])
        by smtp.gmail.com with ESMTPSA id x6-20020ac84a06000000b00342f8143599sm10471111qtq.13.2022.09.06.13.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 13:25:28 -0700 (PDT)
Date:   Tue, 6 Sep 2022 15:25:25 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dianders@chromium.org, johan@kernel.org
Subject: Re: [PATCH 0/3] regulator: dt-bindings: qcom,rpmh: dt-binding fixups
Message-ID: <20220906202525.s77kgjmptdm7cjtw@halaneylaptop>
References: <20220902185148.635292-1-ahalaney@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220902185148.635292-1-ahalaney@redhat.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 02, 2022 at 01:51:45PM -0500, Andrew Halaney wrote:
> Hi,
> 
> This is my poor attempt at getting devicetree validation into a better
> state for qcom,rpmh-regulator.yaml. This is a follow-up to Johan's
> request for this over here:
> 
>     https://lore.kernel.org/linux-arm-msm/Yw8EE%2FESDUnIRf8P@hovoldconsulting.com/
> 
> In particular, I'm not certain patch 1 is the correct way to handle
> things, and patch 2 makes validation too wide for the *-supply nodes.
> 
> I'd love any feedback here as I'm really not experienced in any of the
> spaces (regulator, rpmh, or dt schema) so nit picking is welcomed.

v2 posted over here: https://lore.kernel.org/linux-arm-msm/20220906201959.69920-1-ahalaney@redhat.com/

