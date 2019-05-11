Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 106D01A912
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2019 20:23:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725928AbfEKSXx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 May 2019 14:23:53 -0400
Received: from emh04.mail.saunalahti.fi ([62.142.5.110]:39084 "EHLO
        emh04.mail.saunalahti.fi" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725911AbfEKSXx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 May 2019 14:23:53 -0400
X-Greylist: delayed 357 seconds by postgrey-1.27 at vger.kernel.org; Sat, 11 May 2019 14:23:52 EDT
Received: from t60.musicnaut.iki.fi (85-76-18-95-nat.elisa-mobile.fi [85.76.18.95])
        by emh04.mail.saunalahti.fi (Postfix) with ESMTP id 0C90D300F5;
        Sat, 11 May 2019 21:17:53 +0300 (EEST)
Date:   Sat, 11 May 2019 21:17:53 +0300
From:   Aaro Koskinen <aaro.koskinen@iki.fi>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Convert vendor prefixes to json-schema
Message-ID: <20190511181753.GA2444@t60.musicnaut.iki.fi>
References: <20190510194018.28206-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190510194018.28206-1-robh@kernel.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 10, 2019 at 02:40:18PM -0500, Rob Herring wrote:
> Convert the vendor prefix registry to a schema. This will enable checking
> that new vendor prefixes are added (in addition to the less than perfect
> checkpatch.pl check) and will also check against adding other prefixes
> which are not vendors.
> 
> Converted vendor-prefixes.txt using the following sed script:
> 
> sed -e 's/\([a-zA-Z0-9\-]*\)[[:space:]]*\([a-zA-Z0-9].*\)/  "^\1,\.\*\":\n    description: \2/'
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
[...]
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.txt b/Documentation/devicetree/bindings/vendor-prefixes.txt
> deleted file mode 100644
> index e9034a6c003a..000000000000
> --- a/Documentation/devicetree/bindings/vendor-prefixes.txt
> +++ /dev/null
> @@ -1,476 +0,0 @@
> -Device tree binding vendor prefix registry.  Keep list in alphabetical order.
[...]
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> new file mode 100644
> index 000000000000..be037fb2cada
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -0,0 +1,975 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)

Is there a license change as well?

A.
