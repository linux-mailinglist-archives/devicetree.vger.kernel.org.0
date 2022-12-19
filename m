Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DD736512A8
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 20:18:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232400AbiLSTS1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 14:18:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232465AbiLSTSE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 14:18:04 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24FF111C0D
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 11:17:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1671477438;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=lw/Fj1Iw2Xi8gGiXlXcO2+qBIKUYLL1c1CqizXCd5bE=;
        b=Hmpzuv5/QeSE6nPAJeG/nRQQerChfCcoE9h44NqUGej+jM8Jpb64JUh7Qr7l6xP4ClGM0o
        SXQmLVCbHfM69usqpWVTIFW/jRhvBp5hL0ov8206VcPZnzjlibTYOI3W3ObDnrr9eRhDPO
        Xory/bUfSKI9KCsKM44Sv/cj0ixU9B0=
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com
 [209.85.221.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-372-EVZcbk9zOXS4UtXlRml1Zw-1; Mon, 19 Dec 2022 14:17:17 -0500
X-MC-Unique: EVZcbk9zOXS4UtXlRml1Zw-1
Received: by mail-vk1-f199.google.com with SMTP id j10-20020a1f6e0a000000b003c0f6d63717so3240007vkc.23
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 11:17:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lw/Fj1Iw2Xi8gGiXlXcO2+qBIKUYLL1c1CqizXCd5bE=;
        b=ugkah9vW443qR1l17YuLwCZYYJwIs9znlottkIGBQaB8CI1eto3FE/fIAOps9AbG4k
         z5lHNB3BVZcd8nmPi/KIXe645HfZy8Iw+t/vP8jzb9AofJgzB9T8BGr6nmphJNiiCbZT
         +I5nIeL+DQOhV4LX3sjkG1+BjhDgP7VtjwQ+Am5DQ1tZea3LW+V2I/nmL8RxrbXUaf2k
         aOfdjof/fOuUdopcqbzcuzGacwg/ou3zq7FkJQAzGdUqQlhHDu2qA7m7nz+mdEI3BwNc
         zGF4buAJCOAUiiPutOGaiPMKKY7UIDnAhX55BmSEQ6kpCAv+rUlyMlsIaNJAre2VBJTE
         kK2g==
X-Gm-Message-State: ANoB5pm8jJOqHgUFaMykZNC4y5z/7wSUDrqj5SK7Oz6yOYuaM/J1mP9Y
        /VEG/byntQXVM8+spqazhEJkPvRgxYU0gxhWvhM1O/pkeJfTqs41DBvJtg2uE6Wj4P3cO8slfSB
        SKx+LAXlV4YCjMgxGSrXWzg==
X-Received: by 2002:a05:6102:3083:b0:3b1:4937:2877 with SMTP id l3-20020a056102308300b003b149372877mr23080826vsb.21.1671477436389;
        Mon, 19 Dec 2022 11:17:16 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4iWPbVRwLj078zkvGVS/rMXaSWd3/HYmSgeJhJHRGIOBQ4Q1rAtNoBQr169ipCDx2TZD4nMw==
X-Received: by 2002:a05:6102:3083:b0:3b1:4937:2877 with SMTP id l3-20020a056102308300b003b149372877mr23080807vsb.21.1671477436170;
        Mon, 19 Dec 2022 11:17:16 -0800 (PST)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id bp43-20020a05620a45ab00b006fb7c42e73asm7668029qkb.21.2022.12.19.11.17.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 11:17:15 -0800 (PST)
Date:   Mon, 19 Dec 2022 14:17:15 -0500
From:   Eric Chanudet <echanude@redhat.com>
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Brian Masney <bmasney@redhat.com>
Subject: Re: [PATCH v3 1/4] arm64: dts: qcom: rename pm8450a dtsi to
 sa8540p-pmics
Message-ID: <20221219191715.7vhu2wtrs45zvmh4@echanude>
References: <20221216232606.2123341-1-echanude@redhat.com>
 <20221216232606.2123341-2-echanude@redhat.com>
 <7b6e1c29-4e33-b66c-00c8-836a62a0941d@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7b6e1c29-4e33-b66c-00c8-836a62a0941d@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Dec 17, 2022 at 03:36:58PM +0100, Konrad Dybcio wrote:
> On 17.12.2022 00:26, Eric Chanudet wrote:
> > pm8450a.dtsi was introduced for the descriptions of sa8540p based boards.
> > Rename the dtsi to make this relationship explicit.
> > 
> For the descriptions of PMICs used on SA8540p based boards, I suppose?

Absolutely, thanks! Amended in v4:
https://lore.kernel.org/linux-arm-msm/20221219191000.2570545-1-echanude@redhat.com

-- 
Eric Chanudet

