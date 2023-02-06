Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4D3A68C5BD
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 19:29:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229780AbjBFS3Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 13:29:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjBFS3Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 13:29:16 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C6DB23D87
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 10:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1675708108;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=aE0G6LDX8lXDW0wtXNhk8AO/NAPHw5W1SphgReObSVQ=;
        b=gssYXOeUHze8yNvUGP+z7/O0VFP2BMXCa7T3iHgEeZa5XbCNPSzr2ftqp3TmdrkbZB0dKI
        M/bSsrcpLAJT55ISDhVbwQlfGE1LQNfaIyYtd7psCRCdEG6JoLkaMstYx8bAazshdGhx7W
        1Aun2leB6ZLzRJymX4+wC27GDjuAwmc=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-370-P17-dsOrOXKMhcZKrQZ6xQ-1; Mon, 06 Feb 2023 13:28:27 -0500
X-MC-Unique: P17-dsOrOXKMhcZKrQZ6xQ-1
Received: by mail-io1-f69.google.com with SMTP id r25-20020a6bd919000000b0071cfef31f97so7468377ioc.4
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 10:28:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aE0G6LDX8lXDW0wtXNhk8AO/NAPHw5W1SphgReObSVQ=;
        b=a2EJaPjQTvdyib4Du5uRiZEH05JJe4lMNcr3DINBylJe9vzruj9zOMLg3X5GzuvxHO
         jWrylRzuOnX/qAHMalr8afys2PitOE1iGT/jmcttLbBCuKe1c/HZBo/TPMXkhq5K7Zq7
         Msx7sHsAfF9SJV6SbKmXxhAZzE+aafcLREsH26TwyPCUhD5iQOR3M17Da5TBEBYD2CQp
         RDXl8LpLdTSRhBxF+HgnWv5OOq10zuc1jsZch2gTL8oWb4cKx6RaaiwVdGoyh97PGDUS
         9TrYqQOGX+086DKzbp4KMvreHnmALAma8r873/0GxLnAvE0Xy/WwP9y41OVCw6uuELoW
         voKQ==
X-Gm-Message-State: AO0yUKX+FI8c4LnfzbyQ4zKLz2Eku9Z6H3a01dTpo6FL44xpI1TcNhIC
        /mwm+/nwTo4RPZi0dvUBFr9rHp2+O8yBhW/sxmZlHl4zVxWoq8xMfrelL5vWNIW342jRo9xonQh
        kvlz14hrrDtm39eO6FMly9g==
X-Received: by 2002:a05:6e02:674:b0:310:9798:a26 with SMTP id l20-20020a056e02067400b0031097980a26mr134559ilt.20.1675708105897;
        Mon, 06 Feb 2023 10:28:25 -0800 (PST)
X-Google-Smtp-Source: AK7set/L3GshufTUSqipkhjjiZm+JjTxzP+SJFCkecxkJOuVFkOZ6xWbXOwXxcoTePIVAt8uHmx+4Q==
X-Received: by 2002:a05:6e02:674:b0:310:9798:a26 with SMTP id l20-20020a056e02067400b0031097980a26mr134550ilt.20.1675708105706;
        Mon, 06 Feb 2023 10:28:25 -0800 (PST)
Received: from x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id i17-20020a056e020d9100b00310ce3dd5b1sm3487877ilj.60.2023.02.06.10.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 10:28:25 -0800 (PST)
Date:   Mon, 6 Feb 2023 13:28:23 -0500
From:   Brian Masney <bmasney@redhat.com>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Steev Klimaszewski <steev@kali.org>
Subject: Re: [PATCH v2 2/3] power: supply: Add Lenovo Yoga C630 EC driver
Message-ID: <Y+FGxylqBLRA+Um4@x1>
References: <20230205152809.2233436-1-dmitry.baryshkov@linaro.org>
 <20230205152809.2233436-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230205152809.2233436-3-dmitry.baryshkov@linaro.org>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Feb 05, 2023 at 05:28:08PM +0200, Dmitry Baryshkov wrote:
> +static int yoga_c630_ec_adpt_get_property(struct power_supply *psy,
> +					  enum power_supply_property psp,
> +					  union power_supply_propval *val)
> +{
> +	struct yoga_c630_ec *ec = power_supply_get_drvdata(psy);
> +	int rc = 0;
> +
> +	yoga_c630_ec_update_adapter_status(ec);
> +
> +	switch (psp) {
> +	case POWER_SUPPLY_PROP_ONLINE:
> +		val->intval = ec->adapter_online;
> +		break;
> +	default:
> +		rc = -EINVAL;
> +		break;
> +	}
> +
> +	return rc;

You can simplify this function by getting rid of the switch statement
and rc variable:

	if (psp == POWER_SUPPLY_PROP_ONLINE) {
		val->intval = ec->adapter_online;
		return 0;
	}

	return -EINVAL;

Brian

