Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C344701CC1
	for <lists+devicetree@lfdr.de>; Sun, 14 May 2023 11:51:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229987AbjENJvl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 May 2023 05:51:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229758AbjENJvk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 May 2023 05:51:40 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7466A1B6
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 02:51:38 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-50bd37ca954so102768586a12.0
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 02:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684057897; x=1686649897;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1B3du+5hpvlLOa22naBqYj3xDgWNzyGiPg0V7Tn+jlA=;
        b=VsizmiPhgVVC017QpqyleBMJ6rMsZ6adYRvRLnGhJXvM5cBZfIoBWaE5nAB954jxuN
         st8r7Jl2src32zEaX6zbGMKCiu/DYREMSOJntv28ncNe4MSjbwcsNNkEmqojhzwQEMPy
         TiBhkH/9MVvjWgr9rszUv8nLkchIcB6+CUOdCpMWnINKSz68ArWroDy8k4La6Qykyg2n
         DOs0t3N/qXQmPLzO8QOvRH0VdPmTxIlbWAGttWitZNSWTlWdu+xemCmudRUbUvti2qmT
         KdJwNdT7SWSzkvsaP/xzEujH99ic+BiL12UtQqqlNMPnrRZ4vf9e45hbZUG1l+nuJ2Kv
         YrkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684057897; x=1686649897;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1B3du+5hpvlLOa22naBqYj3xDgWNzyGiPg0V7Tn+jlA=;
        b=PnoRq8bq+XvMXEDKaAEqEJUDy6NJ6R2QqCuxPC/GVCGUPIOoSvEi05tJ81stqwFjjB
         A56VwPu2rvncAkbRYerSZ86wXZWPRSHia8L61N+FjkafXaINavErtKHp/u6srkD+zb2Z
         tWKl65QWOwZVV6DwRL5N/j0xcWzrEnK7l/U5xQdE9m6o7wn97zwir2xbV8Q/goYsHviY
         ShJEoPgyCqdhILk7MG8jmINPYcLcuw6CnMkW9pV14wcUY4W3W484sk8IAxNq+5Q+vCfI
         EU0PM8iecPtMvuXsXGfe7H7d9jVgkA9cpoq+yuTU1jTawgKgMRAcs9AEhn9AcS8zxa/j
         u4VQ==
X-Gm-Message-State: AC+VfDxfCGBcfoE+oXKzwLPc/s20yBBKUF7IJCh17bCHDX00wym4XH/m
        7i/CMaOf48SISy9joE5z7f/kzw==
X-Google-Smtp-Source: ACHHUZ58XebRfUPqpJ87adEoTJVSm4nYzk/motHLFcYmh+n/Hi1XU9+7Z/l1hQUhfE06kxij9bcHjA==
X-Received: by 2002:a17:907:8689:b0:96a:316f:8aaa with SMTP id qa9-20020a170907868900b0096a316f8aaamr12388354ejc.37.1684057896845;
        Sun, 14 May 2023 02:51:36 -0700 (PDT)
Received: from krzk-bin ([2a02:810d:15c0:828:715f:ddce:f2ba:123b])
        by smtp.gmail.com with ESMTPSA id r9-20020aa7cb89000000b005021d210899sm5663978edt.23.2023.05.14.02.51.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 May 2023 02:51:36 -0700 (PDT)
Date:   Sun, 14 May 2023 11:51:33 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rudi Heitbaum <rudi@heitbaum.com>
Cc:     pabeni@redhat.com, alistair@alistair23.me,
        linux-arm-kernel@lists.infradead.org, jernej.skrabec@gmail.com,
        robh+dt@kernel.org, davem@davemloft.net,
        linux-bluetooth@vger.kernel.org, conor+dt@kernel.org,
        anarsoul@gmail.com, devicetree@vger.kernel.org,
        linux-sunxi@lists.linux.dev, luiz.dentz@gmail.com,
        johan.hedberg@gmail.com, kuba@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, edumazet@google.com,
        marcel@holtmann.org, wens@csie.org, linux-kernel@vger.kernel.org,
        samuel@sholland.org, netdev@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: net: realtek-bluetooth: Add RTL8822BS
Message-ID: <20230514095133.b4ojnu6y222kzhcb@krzk-bin>
References: <20230514074731.70614-1-rudi@heitbaum.com>
 <20230514074731.70614-2-rudi@heitbaum.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230514074731.70614-2-rudi@heitbaum.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 14 May 2023 07:47:29 +0000, Rudi Heitbaum wrote:
> Add compatible string for RTL8822BS for existing Realtek Bluetooth
> driver.
> 
> Signed-off-by: Rudi Heitbaum <rudi@heitbaum.com>
> ---
>  .../devicetree/bindings/net/realtek-bluetooth.yaml  | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml: properties:compatible:oneOf:1:items: 'oneOf' conditional failed, one must be fixed:
	[{'enum': ['realtek,rtl8821cs-bt']}, {'const': ['realtek,rtl8822bs-bt', 'realtek,rtl8822cs-bt']}] is not of type 'object'
	['realtek,rtl8822bs-bt', 'realtek,rtl8822cs-bt'] is not of type 'integer', 'string'
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml: properties:compatible:oneOf:1:items: 'oneOf' conditional failed, one must be fixed:
	[{'enum': ['realtek,rtl8821cs-bt']}, {'const': ['realtek,rtl8822bs-bt', 'realtek,rtl8822cs-bt']}] is not of type 'object'
	['realtek,rtl8822bs-bt', 'realtek,rtl8822cs-bt'] is not of type 'string'
	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#
Traceback (most recent call last):
  File "/usr/local/bin/dt-validate", line 167, in <module>
    sg.check_trees(filename, testtree)
    ...
  File "/usr/lib/python3.10/sre_parse.py", line 599, in _parse
    raise source.error(msg, len(this) + 1 + len(that))
re.error: bad character range s-b at position 18

Note: You even broke the dtschema :)

See https://patchwork.ozlabs.org/patch/1781021

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.
