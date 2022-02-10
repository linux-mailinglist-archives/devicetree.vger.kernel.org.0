Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6FE44B13B5
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 17:59:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239993AbiBJQ7Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 11:59:24 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:41930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244504AbiBJQ7X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 11:59:23 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECAA5B91
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 08:59:24 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: nfraprado)
        with ESMTPSA id 43FEF1F46529
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1644512363;
        bh=7WQXKQDJyv2re8GvqJGfp+bvC6Rz7IMtqMOCj+G58Ic=;
        h=Date:From:To:Cc:Subject:From;
        b=KFWjo4+ciNHzXeZAIAn1zQNCWR3XEG95Q2UCldW1Y7N6fQaoWovvblH30hxhyjbx0
         HLNnNXb9LKK2vnZNWwBpn/euLIWJL4UBs54izwr09Y3dxYs1W/OpZZgPMj6ZrIQ+nU
         SgpqiZPi4P6gZ43lq84tBuYZlwpN+VLiXUslNZcRTFBSaGQujm+kkny62ZlsHP+n+P
         I46BKVmoYvUDOLAVGdhtFi1I1eWYSiN4qaYjz/0Q2KkN+ArnbO3BEQPI8BvKyrBFty
         ylMWlfQCCUI0PEnuA3W82oWBbv558nKx4S1s3DUx9Hj5M2wp1ZdOcD6u/t774XjmjE
         XUNoJhm0xXWRA==
Date:   Thu, 10 Feb 2022 11:59:18 -0500
From:   =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado 
        <nfraprado@collabora.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, kernel@collabora.com
Subject: Option in dtbs_check to filter a single dtb
Message-ID: <20220210165918.2d2vnokpowvbl5jp@notapiano>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

when reviewing changes in a dts, it is necessary to not only verify that the
build is clean, but also to run dtbs_check to make sure that the changes comply
to the related dt-bindings.

However this process can take a long time since it checks all the dtbs against
all dt-bindings. The workflow could be significantly improved if a flag could be
passed to compile and validate a single dts against all appropriate dt-bindings.
The documentation [1] shows DT_SCHEMA_FILES, which does the opposite, validating
all dtbs against a single (or few) schema files. This flag is useful when
validating a change in a dt-binding, but for validating a change in a dts, the
complete opposite is required.

So I'm writing this to ask if there's really nothing like this available, and in
that case, consider this a feature suggestion for improving the workflow for
reviewing dts changes and ensuring they don't create new dt-binding warnings.

Thanks,
Nícolas

[1] https://www.kernel.org/doc/html/latest/devicetree/bindings/writing-schema.html#running-checks
